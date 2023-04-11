import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call has ended with an error
@immutable
class CallStateError extends CallState {
  const CallStateError({
    required this.error,
  });

  /// [error] Error. An error with the code 4005000 will be returned if an
  /// outgoing call is missed because of an expired timeout
  final TdError error;

  static const String constructor = 'callStateError';

  static CallStateError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateError(
      error: TdError.fromJson(json['error'] as Map<String, dynamic>?)!,
    );
  }

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
