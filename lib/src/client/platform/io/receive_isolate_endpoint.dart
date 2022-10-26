import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';
import 'package:tdlib/src/client/platform/platform.dart';
import 'package:tdlib/td_api.dart';

import 'json_bindings.dart';
import 'receive_isolate_data.dart';

Future<void> receiveIsolateEntryPoint(ReceiveIsolateData data) async {
  final JsonBindings jsonBindings = JsonBindings();
  final ffi.Pointer client = ffi.Pointer.fromAddress(data.clientAddress);
  while (true) {
    final ffi.Pointer<Utf8> result = jsonBindings.receive(client, 1);
    await Future<void>.delayed(Duration.zero);
    if (result != ffi.nullptr) {
      final String raw = result.toDartString();
      final Map<String, dynamic> newJson = json.decode(raw);
      TdObject? object = newJson.toTdObject();

      if (object != null) {
        int? extra = newJson['@extra'];

        data.isolateToMainPort.send(
          Event(
            object: object,
            extra: extra,
          ),
        );
      }
    }
  }
}
