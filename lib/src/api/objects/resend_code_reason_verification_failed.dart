import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The code is re-sent, because device verification has failed
@immutable
class ResendCodeReasonVerificationFailed extends ResendCodeReason {
  const ResendCodeReasonVerificationFailed({
    required this.errorMessage,
  });

  /// [errorMessage] Cause of the verification failure, for example,
  /// PLAY_SERVICES_NOT_AVAILABLE, APNS_RECEIVE_TIMEOUT, or APNS_INIT_FAILED
  final String errorMessage;

  static const String constructor = 'resendCodeReasonVerificationFailed';

  static ResendCodeReasonVerificationFailed? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ResendCodeReasonVerificationFailed(
      errorMessage: json['error_message'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'error_message': errorMessage,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
