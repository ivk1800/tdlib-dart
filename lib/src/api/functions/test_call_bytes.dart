import '../tdapi.dart';

/// Returns the received bytes; for testing only. This is an offline method.
/// Can be called before authorization
/// Returns [TestBytes]
class TestCallBytes extends TdFunction {
  TestCallBytes({required this.x});

  /// [x] Bytes to return
  final String x;

  static const String CONSTRUCTOR = 'testCallBytes';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'x': this.x, '@type': CONSTRUCTOR};
}
