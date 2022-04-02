import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
