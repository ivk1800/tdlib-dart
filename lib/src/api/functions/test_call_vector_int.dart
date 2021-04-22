import '../tdapi.dart';

/// Returns the received vector of numbers; for testing only. This is an
/// offline method. Can be called before authorization
/// Returns [TestVectorInt]
class TestCallVectorInt extends TdFunction {
  TestCallVectorInt({required this.x});

  /// [x] Vector of numbers to return
  final List<int> x;

  static const String CONSTRUCTOR = 'testCallVectorInt';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'x': x.map((item) => item).toList(), '@type': CONSTRUCTOR};
}
