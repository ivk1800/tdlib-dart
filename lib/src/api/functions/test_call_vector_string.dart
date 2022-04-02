import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns the received vector of strings; for testing only. This is an
/// offline method. Can be called before authorization
/// Returns [TestVectorString]
class TestCallVectorString extends TdFunction {
  TestCallVectorString({required this.x});

  /// [x] Vector of strings to return
  final List<String> x;

  static const String CONSTRUCTOR = 'testCallVectorString';

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
