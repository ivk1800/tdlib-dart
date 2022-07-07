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

  JsonBindings._internal();

  late final ffi.DynamicLibrary _libtdjson = _openLib();

  late final ffi.Pointer Function() _clientCreate = _libtdjson
      .lookup<ffi.NativeFunction<td_json_client_create_t>>(
          _resolveFuncName('create'))
      .asFunction();

  late final ffi.Pointer<Utf8> Function(ffi.Pointer, double) _clientReceive =
      _libtdjson
          .lookup<ffi.NativeFunction<td_json_client_receive_t>>(
              _resolveFuncName('receive'))
          .asFunction();

  late final void Function(ffi.Pointer, ffi.Pointer<Utf8>) _clientSend =
      _libtdjson
          .lookup<ffi.NativeFunction<td_json_client_send_t>>(
              _resolveFuncName('send'))
          .asFunction();

  late final ffi.Pointer<Utf8> Function(ffi.Pointer, ffi.Pointer<Utf8>)
      _clientExecute = _libtdjson
          .lookup<ffi.NativeFunction<td_json_client_execute_t>>(
              _resolveFuncName('execute'))
          .asFunction();

  late final void Function(ffi.Pointer) _clientDestroy = _libtdjson
      .lookup<ffi.NativeFunction<td_json_client_destroy_t>>(
          _resolveFuncName('destroy'))
      .asFunction();

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
