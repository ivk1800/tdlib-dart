import '../tdapi.dart';

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
}
