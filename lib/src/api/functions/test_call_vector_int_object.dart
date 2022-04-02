import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns the received vector of objects containing a number; for testing
/// only. This is an offline method. Can be called before authorization
/// Returns [TestVectorIntObject]
class TestCallVectorIntObject extends TdFunction {
  TestCallVectorIntObject({required this.x});

  /// [x] Vector of objects to return
  final List<TestInt> x;

  static const String CONSTRUCTOR = 'testCallVectorIntObject';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'x': x.map((item) => item.toJson()).toList(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
