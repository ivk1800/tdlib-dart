import '../platform.dart';

class PlatformImpl implements Platform {
  @override
  void destroy() {
    // TODO: implement destroy
    throw UnimplementedError();
  }

  @override
  // TODO: implement events
  Stream<Map<String, dynamic>> get events => throw UnimplementedError();

  @override
  Map<String, dynamic> execute({required Map<String, dynamic> function}) {
    // TODO: implement execute
    throw UnimplementedError();
  }

  @override
  Future<void> initialize() {
    // TODO: implement initialize
    throw UnimplementedError();
  }

  @override
  void send({required Map<String, dynamic> function}) {
    // TODO: implement send
    throw UnimplementedError();
  }
}
