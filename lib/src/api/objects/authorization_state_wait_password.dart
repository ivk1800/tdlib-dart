import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user has been authorized, but needs to enter a 2-step verification
/// password to start using the application. Call checkAuthenticationPassword
/// to provide the password, or requestAuthenticationPasswordRecovery to
/// recover the password, or deleteAccount to delete the account after a week
@immutable
class AuthorizationStateWaitPassword extends AuthorizationState {
  const AuthorizationStateWaitPassword({
    required this.passwordHint,
    required this.hasRecoveryEmailAddress,
    required this.hasPassportData,
    required this.recoveryEmailAddressPattern,
  });

  /// [passwordHint] Hint for the password; may be empty
  final String passwordHint;

  /// [hasRecoveryEmailAddress] True, if a recovery email address has been set
  /// up
  final bool hasRecoveryEmailAddress;

  /// [hasPassportData] True, if some Telegram Passport elements were saved
  final bool hasPassportData;

  /// [recoveryEmailAddressPattern] Pattern of the email address to which the
  /// recovery email was sent; empty until a recovery email has been sent
  final String recoveryEmailAddressPattern;

  static const String constructor = 'authorizationStateWaitPassword';

  static AuthorizationStateWaitPassword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitPassword(
      passwordHint: json['password_hint'] as String,
      hasRecoveryEmailAddress: json['has_recovery_email_address'] as bool,
      hasPassportData: json['has_passport_data'] as bool,
      recoveryEmailAddressPattern:
          json['recovery_email_address_pattern'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password_hint': passwordHint,
        'has_recovery_email_address': hasRecoveryEmailAddress,
        'has_passport_data': hasPassportData,
        'recovery_email_address_pattern': recoveryEmailAddressPattern,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
