import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns the received string; for testing only. This is an offline method.
/// Can be called before authorization
/// Returns [TestString]
class TestCallString extends TdFunction {
  TestCallString({required this.x});

  /// [x] String to return
  final String x;

  static const String CONSTRUCTOR = 'testCallString';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'x': this.x, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
