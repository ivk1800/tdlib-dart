import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
