import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A request can't be completed unless reCAPTCHA verification is performed;
/// for official mobile applications only. The method
/// setApplicationVerificationToken must be called once the verification is
/// completed or failed
@immutable
class UpdateApplicationRecaptchaVerificationRequired extends Update {
  const UpdateApplicationRecaptchaVerificationRequired({
    required this.verificationId,
    required this.action,
    required this.recaptchaKeyId,
  });

  /// [verificationId] Unique identifier for the verification process
  final int verificationId;

  /// [action] The action for the check
  final String action;

  /// [recaptchaKeyId] Identifier of the reCAPTCHA key
  final String recaptchaKeyId;

  static const String constructor =
      'updateApplicationRecaptchaVerificationRequired';

  static UpdateApplicationRecaptchaVerificationRequired? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateApplicationRecaptchaVerificationRequired(
      verificationId: json['verification_id'] as int,
      action: json['action'] as String,
      recaptchaKeyId: json['recaptcha_key_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'verification_id': verificationId,
    'action': action,
    'recaptcha_key_id': recaptchaKeyId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
