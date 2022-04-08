import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user has been authorized, but needs to enter a password to start using
/// the application
@immutable
class AuthorizationStateWaitPassword extends AuthorizationState {
  const AuthorizationStateWaitPassword({
    required this.passwordHint,
    required this.hasRecoveryEmailAddress,
    required this.recoveryEmailAddressPattern,
  });

  /// [passwordHint] Hint for the password; may be empty
  final String passwordHint;

  /// [hasRecoveryEmailAddress] True, if a recovery email address has been set
  /// up
  final bool hasRecoveryEmailAddress;

  /// [recoveryEmailAddressPattern] Pattern of the email address to which the
  /// recovery email was sent; empty until a recovery email has been sent
  final String recoveryEmailAddressPattern;

  static const String constructor = 'authorizationStateWaitPassword';

  static AuthorizationStateWaitPassword? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitPassword(
      passwordHint: json['password_hint'],
      hasRecoveryEmailAddress: json['has_recovery_email_address'],
      recoveryEmailAddressPattern: json['recovery_email_address_pattern'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password_hint': passwordHint,
        'has_recovery_email_address': hasRecoveryEmailAddress,
        'recovery_email_address_pattern': recoveryEmailAddressPattern,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
