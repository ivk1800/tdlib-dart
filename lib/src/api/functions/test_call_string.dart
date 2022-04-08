import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the received string; for testing only. This is an offline method.
/// Can be called before authorization
/// Returns [TestString]
@immutable
class TestCallString extends TdFunction {
  const TestCallString({
    required this.x,
  });

  /// [x] String to return
  final String x;

  static const String constructor = 'testCallString';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
