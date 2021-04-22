import '../tdapi.dart';

/// Sends a simple network request to the Telegram servers; for testing only.
/// Can be called before authorization
/// Returns [Ok]
class TestNetwork extends TdFunction {
  TestNetwork();

  static const String CONSTRUCTOR = 'testNetwork';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
