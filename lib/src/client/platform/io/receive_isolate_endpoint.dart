import 'dart:async';
import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import 'json_bindings.dart';
import 'receive_isolate_data.dart';

Future<void> receiveIsolateEntryPoint(ReceiveIsolateData data) async {
  final JsonBindings jsonBindings = JsonBindings();
  final ffi.Pointer client = ffi.Pointer.fromAddress(data.clientAddress);
  while (true) {
    final ffi.Pointer<Utf8> result = jsonBindings.receive(client, 1);
    await Future<void>.delayed(Duration.zero);
    if (result != ffi.nullptr) {
      final String event = result.toDartString();
      data.isolateToMainPort.send(event);
    }
  }
}
