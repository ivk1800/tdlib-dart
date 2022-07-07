import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

typedef td_json_client_create_t = ffi.Pointer Function();

typedef td_json_client_receive_t = ffi.Pointer<Utf8> Function(
    ffi.Pointer, ffi.Double);

typedef td_json_client_send_t = ffi.Void Function(
    ffi.Pointer, ffi.Pointer<Utf8>);

typedef td_json_client_execute_t = ffi.Pointer<Utf8> Function(
    ffi.Pointer, ffi.Pointer<Utf8>);

typedef td_json_client_destroy_t = ffi.Void Function(ffi.Pointer);

class JsonBindings {
  static final JsonBindings _singleton = JsonBindings._internal();

  factory JsonBindings() => _singleton;

  JsonBindings._internal() {
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

  ffi.Pointer createClient() => _clientCreate();

  void send(ffi.Pointer client, String object) =>
      _clientSend(client, object.toNativeUtf8());

  ffi.Pointer<Utf8> receive(ffi.Pointer client, double timeout) =>
      _clientReceive(client, timeout);

  Map<String, dynamic> execute(ffi.Pointer client, String query) =>
      json.decode(_clientExecute(client, query.toNativeUtf8()).toDartString());

  void destroy(ffi.Pointer client) => _clientDestroy(client);

  String _resolveLibName() {
    if (Platform.isAndroid) {
      return 'libtdjsonandroid.so';
    } else if (Platform.isWindows) {
      return 'tdjson.dll';
    }
    throw UnsupportedError('Unsupported for current platform');
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
