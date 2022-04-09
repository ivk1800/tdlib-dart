import 'dart:isolate';

class ReceiveIsolateData {
  final SendPort isolateToMainPort;
  final int clientAddress;

  ReceiveIsolateData({
    required this.isolateToMainPort,
    required this.clientAddress,
  });
}
