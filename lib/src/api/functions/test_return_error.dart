import '../tdapi.dart';

/// Returns the specified error and ensures that the Error object is used; for
/// testing only. Can be called synchronously
/// Returns [Error]
class TestReturnError extends TdFunction {
  TestReturnError({required this.error});

  /// [error] The error to be returned
  final TdError error;

  static const String CONSTRUCTOR = 'testReturnError';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'error': this.error.toJson(), '@type': CONSTRUCTOR};
}
