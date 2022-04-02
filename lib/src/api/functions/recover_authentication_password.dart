import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Recovers the password with a password recovery code sent to an email
/// address that was previously set up. Works only when the current
/// authorization state is authorizationStateWaitPassword
/// Returns [Ok]
class RecoverAuthenticationPassword extends TdFunction {
  RecoverAuthenticationPassword(
      {required this.recoveryCode,
      required this.newPassword,
      required this.newHint});

  /// [recoveryCode] Recovery code to check
  final String recoveryCode;

  /// [newPassword] New password of the user; may be empty to remove the
  /// password
  final String newPassword;

  /// [newHint] New password hint; may be empty
  final String newHint;

  static const String CONSTRUCTOR = 'recoverAuthenticationPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'recovery_code': this.recoveryCode,
        'new_password': this.newPassword,
        'new_hint': this.newHint,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
