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

  /// [pendingResetDate] If not 0, point in time (Unix timestamp) after which
  /// the password can be reset immediately using resetPassword
  final int pendingResetDate;

  static const String constructor = 'passwordState';

  static PasswordState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PasswordState(
      hasPassword: json['has_password'],
      passwordHint: json['password_hint'],
      hasRecoveryEmailAddress: json['has_recovery_email_address'],
      hasPassportData: json['has_passport_data'],
      recoveryEmailAddressCodeInfo: EmailAddressAuthenticationCodeInfo.fromJson(
          json['recovery_email_address_code_info']),
      pendingResetDate: json['pending_reset_date'],
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
        'pending_reset_date': pendingResetDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
