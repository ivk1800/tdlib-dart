import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
