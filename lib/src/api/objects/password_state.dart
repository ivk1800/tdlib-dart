import '../tdapi.dart';

/// Represents the current state of 2-step verification
class PasswordState extends TdObject {
  PasswordState(
      {required this.hasPassword,
      required this.passwordHint,
      required this.hasRecoveryEmailAddress,
      required this.hasPassportData,
      this.recoveryEmailAddressCodeInfo});

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

  static const String CONSTRUCTOR = 'passwordState';

  static PasswordState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PasswordState(
        hasPassword: json['has_password'],
        passwordHint: json['password_hint'],
        hasRecoveryEmailAddress: json['has_recovery_email_address'],
        hasPassportData: json['has_passport_data'],
        recoveryEmailAddressCodeInfo:
            EmailAddressAuthenticationCodeInfo.fromJson(
                json['recovery_email_address_code_info']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'has_password': this.hasPassword,
        'password_hint': this.passwordHint,
        'has_recovery_email_address': this.hasRecoveryEmailAddress,
        'has_passport_data': this.hasPassportData,
        'recovery_email_address_code_info':
            this.recoveryEmailAddressCodeInfo?.toJson(),
        '@type': CONSTRUCTOR
      };
}
