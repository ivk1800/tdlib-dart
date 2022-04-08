import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the received vector of objects containing a number; for testing
/// only. This is an offline method. Can be called before authorization
/// Returns [TestVectorIntObject]
@immutable
class TestCallVectorIntObject extends TdFunction {
  const TestCallVectorIntObject({
    required this.x,
  });

  /// [x] Vector of objects to return
  final List<TestInt> x;

  static const String constructor = 'testCallVectorIntObject';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
