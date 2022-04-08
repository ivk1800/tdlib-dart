import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:io';
import 'dart:isolate';

import 'package:ffi/ffi.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tdlib/td_api.dart';

class Client {
  final _JsonBindings _jsonBindings = _JsonBindings();

  int _extraCount = 0;
  late ffi.Pointer _client;
  late Isolate _isolate;
  final PublishSubject<TdObject> _updatesSubject = PublishSubject<TdObject>();

  final PublishSubject<Map<String, dynamic>> _rawResultsSubject =
      PublishSubject<Map<String, dynamic>>();

  Client();

  Stream<TdObject> get updates => _updatesSubject;

  Future<T> send<T extends TdObject>(TdFunction function) async {
    final Map<String, dynamic> jsonAsMap = function.toJson();
    final dynamic extra = ++_extraCount;
    jsonAsMap['@extra'] = extra;
    unawaited(_jsonBindings.send(_client, json.encode(jsonAsMap)));

    return _rawResultsSubject
        .where((Map<String, dynamic> event) => event['@extra'] == extra)
        .map((Map<String, dynamic> event) => _handleTdObject<T>(
              tdObject: event.toTdObject(),
              function: function,
            ))
        .take(1)
        .single;
  }

  Future<T> execute<T extends TdObject>(TdFunction function) async {
    return _jsonBindings
        .execute(_client, json.encode(function.toJson()))
        .then((Map<String, dynamic> event) => _handleTdObject<T>(
              tdObject: event.toTdObject(),
              function: function,
            ));
  }

  Future<void> create() async {
    _client = _jsonBindings._clientCreate();
    final ReceivePort resultPort = ReceivePort();
    resultPort.listen((dynamic message) {
      if (message is String) {
        final Map<String, dynamic> newJson = json.decode(message);

        final dynamic extra = newJson['@extra'];
        if (extra != null) {
          _rawResultsSubject.add(newJson);
        } else {
          final TdObject? tdObject = newJson.toTdObject();
          if (tdObject != null) {
            _updatesSubject.add(tdObject);
          }
        }
      }
    });

    _isolate = await Isolate.spawn(
        _receiveIsolate,
        _ReceiveIsolateData(
            port: resultPort.sendPort, clientAddress: _client.address));
  }

  void destroy() {
    _updatesSubject.close();
    _rawResultsSubject.close();
    _isolate.kill();
    _jsonBindings.destroy(_client);
  }

  T _handleTdObject<T extends TdObject>({
    required TdObject? tdObject,
    required TdFunction function,
  }) {
    if (tdObject != null) {
      if (tdObject is T) {
        return tdObject;
      } else if (tdObject is TdError) {
        throw TdFunctionError(function: function, error: tdObject);
      }
    }

    throw Exception('expected type [$T], but was ${tdObject.runtimeType}');
  }
}

void _receiveIsolate(_ReceiveIsolateData port) async {
  final _JsonBindings jsonBindings = _JsonBindings();
  final ffi.Pointer client = ffi.Pointer.fromAddress(port.clientAddress);
  while (true) {
    final ffi.Pointer<Utf8> result = await jsonBindings.receive(client, 500);
    final String event = result.toDartString();
    port.port.send(event);
  }
}

class _ReceiveIsolateData {
  final SendPort port;
  final int clientAddress;

  _ReceiveIsolateData({required this.port, required this.clientAddress});
}

typedef td_json_client_create_t = ffi.Pointer Function();

typedef td_json_client_receive_t = ffi.Pointer<Utf8> Function(
    ffi.Pointer, ffi.Double);

typedef td_json_client_send_t = ffi.Void Function(
    ffi.Pointer, ffi.Pointer<Utf8>);

typedef td_json_client_execute_t = ffi.Pointer<Utf8> Function(
    ffi.Pointer, ffi.Pointer<Utf8>);

typedef td_json_client_destroy_t = ffi.Void Function(ffi.Pointer);

class _JsonBindings {
  static final _JsonBindings _singleton = _JsonBindings._internal();

  factory _JsonBindings() {
    return _singleton;
  }

  _JsonBindings._internal() {
    final libtdjson = _openLib();

    _clientCreate = libtdjson
        .lookup<ffi.NativeFunction<td_json_client_create_t>>(
            _resolveFuncName('create'))
        .asFunction();

    _clientReceive = libtdjson
        .lookup<ffi.NativeFunction<td_json_client_receive_t>>(
            _resolveFuncName('receive'))
        .asFunction();

    _clientSend = libtdjson
        .lookup<ffi.NativeFunction<td_json_client_send_t>>(
            _resolveFuncName('send'))
        .asFunction();

    _clientExecute = libtdjson
        .lookup<ffi.NativeFunction<td_json_client_execute_t>>(
            _resolveFuncName('execute'))
        .asFunction();

    _clientDestroy = libtdjson
        .lookup<ffi.NativeFunction<td_json_client_destroy_t>>(
            _resolveFuncName('destroy'))
        .asFunction();
  }

  late ffi.Pointer Function() _clientCreate;

  late ffi.Pointer<Utf8> Function(ffi.Pointer, double) _clientReceive;

  late void Function(ffi.Pointer, ffi.Pointer<Utf8>) _clientSend;

  late ffi.Pointer<Utf8> Function(ffi.Pointer, ffi.Pointer<Utf8>)
      _clientExecute;

  late void Function(ffi.Pointer) _clientDestroy;

  Future<void> send(ffi.Pointer client, String object) async =>
      _clientSend(client, object.toNativeUtf8());

  Future<ffi.Pointer<Utf8>> receive(ffi.Pointer client, double timeout) async =>
      _clientReceive(client, timeout);

  Future<Map<String, dynamic>> execute(
          ffi.Pointer client, String query) async =>
      json.decode(_clientExecute(client, query.toNativeUtf8()).toDartString());

  Future<void> destroy(ffi.Pointer client) async => _clientDestroy(client);

  String _resolveLibName() {
    if (Platform.isAndroid) {
      return 'libtdjsonandroid.so';
    } else if (Platform.isWindows) {
      return 'tdjson.dll';
    }
    throw UnsupportedError('unsupported for current platform');
  }

  String _resolveFuncName(String name) =>
      '${Platform.isAndroid ? '_' : ''}td_json_client_$name';

  ffi.DynamicLibrary _openLib() {
    if (Platform.isMacOS || Platform.isIOS) {
      return ffi.DynamicLibrary.process();
    }
    return ffi.DynamicLibrary.open(_resolveLibName());
  }
}

// extension _MapExt on Map<String, dynamic> {
//   TdObject? toTdObject() {
//     TdObject? Function(Map<String, dynamic>)? f =
//         allObjects[this['@type']!];
//     return f?.call(this);
//   }
// }

class TdFunctionError extends Error {
  TdFunctionError({
    required this.error,
    required this.function,
  });

  final TdFunction function;
  final TdError error;

  @override
  String toString() =>
      'TdFunctionError(function: ${function.toJson()}, error: ${error.toJson()})';
}
