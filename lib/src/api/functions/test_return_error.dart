import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the specified error and ensures that the Error object is used; for
/// testing only. Can be called synchronously
/// Returns [Error]
@immutable
class TestReturnError extends TdFunction {
  const TestReturnError({
    required this.error,
  });

  /// [error] The error to be returned
  final TdError error;

  static const String constructor = 'testReturnError';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'error': error.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
