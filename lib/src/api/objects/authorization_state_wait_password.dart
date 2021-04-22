import '../tdapi.dart';

/// The user has been authorized, but needs to enter a password to start using
/// the application
class AuthorizationStateWaitPassword extends AuthorizationState {
  AuthorizationStateWaitPassword(
      {required this.passwordHint,
      required this.hasRecoveryEmailAddress,
      required this.recoveryEmailAddressPattern});

  /// [passwordHint] Hint for the password; may be empty
  final String passwordHint;

  /// [hasRecoveryEmailAddress] True, if a recovery email address has been set
  /// up
  final bool hasRecoveryEmailAddress;

  /// [recoveryEmailAddressPattern] Pattern of the email address to which the
  /// recovery email was sent; empty until a recovery email has been sent
  final String recoveryEmailAddressPattern;

  static const String CONSTRUCTOR = 'authorizationStateWaitPassword';

  static AuthorizationStateWaitPassword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitPassword(
        passwordHint: json['password_hint'],
        hasRecoveryEmailAddress: json['has_recovery_email_address'],
        recoveryEmailAddressPattern: json['recovery_email_address_pattern']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'password_hint': this.passwordHint,
        'has_recovery_email_address': this.hasRecoveryEmailAddress,
        'recovery_email_address_pattern': this.recoveryEmailAddressPattern,
        '@type': CONSTRUCTOR
      };
}
