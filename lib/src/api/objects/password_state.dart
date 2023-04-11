import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the current state of 2-step verification
@immutable
class PasswordState extends TdObject {
  const PasswordState({
    required this.hasPassword,
    required this.passwordHint,
    required this.hasRecoveryEmailAddress,
    required this.hasPassportData,
    this.recoveryEmailAddressCodeInfo,
    required this.loginEmailAddressPattern,
    required this.pendingResetDate,
  });

  /// [hasPassword] True, if a 2-step verification password is set
  final bool hasPassword;

  /// [passwordHint] Hint for the password; may be empty
  final String passwordHint;

  /// [hasRecoveryEmailAddress] True, if a recovery email is set
  final bool hasRecoveryEmailAddress;

  /// [hasPassportData] True, if some Telegram Passport elements were saved
  final bool hasPassportData;

  /// [recoveryEmailAddressCodeInfo] Information about the recovery email
  /// address to which the confirmation email was sent; may be null
  final EmailAddressAuthenticationCodeInfo? recoveryEmailAddressCodeInfo;

  /// [loginEmailAddressPattern] Pattern of the email address set up for logging
  /// in
  final String loginEmailAddressPattern;

  /// [pendingResetDate] If not 0, point in time (Unix timestamp) after which
  /// the 2-step verification password can be reset immediately using
  /// resetPassword
  final int pendingResetDate;

  static const String constructor = 'passwordState';

  static PasswordState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PasswordState(
      hasPassword: json['has_password'] as bool,
      passwordHint: json['password_hint'] as String,
      hasRecoveryEmailAddress: json['has_recovery_email_address'] as bool,
      hasPassportData: json['has_passport_data'] as bool,
      recoveryEmailAddressCodeInfo: EmailAddressAuthenticationCodeInfo.fromJson(
          json['recovery_email_address_code_info'] as Map<String, dynamic>?),
      loginEmailAddressPattern: json['login_email_address_pattern'] as String,
      pendingResetDate: json['pending_reset_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'has_password': hasPassword,
        'password_hint': passwordHint,
        'has_recovery_email_address': hasRecoveryEmailAddress,
        'has_passport_data': hasPassportData,
        'recovery_email_address_code_info':
            recoveryEmailAddressCodeInfo?.toJson(),
        'login_email_address_pattern': loginEmailAddressPattern,
        'pending_reset_date': pendingResetDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
