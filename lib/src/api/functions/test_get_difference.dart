import '../tdapi.dart';

/// Forces an updates.getDifference call to the Telegram servers; for testing
/// only
/// Returns [Ok]
class TestGetDifference extends TdFunction {
  TestGetDifference();

  static const String CONSTRUCTOR = 'testGetDifference';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
