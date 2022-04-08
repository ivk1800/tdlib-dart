import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the received bytes; for testing only. This is an offline method.
/// Can be called before authorization
/// Returns [TestBytes]
@immutable
class TestCallBytes extends TdFunction {
  const TestCallBytes({
    required this.x,
  });

  /// [x] Bytes to return
  final String x;

  static const String constructor = 'testCallBytes';

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
