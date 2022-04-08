import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the received vector of numbers; for testing only. This is an
/// offline method. Can be called before authorization
/// Returns [TestVectorInt]
@immutable
class TestCallVectorInt extends TdFunction {
  const TestCallVectorInt({
    required this.x,
  });

  /// [x] Vector of numbers to return
  final List<int> x;

  static const String constructor = 'testCallVectorInt';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
