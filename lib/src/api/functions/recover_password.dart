import '../tdapi.dart';

/// Recovers the 2-step verification password using a recovery code sent to an
/// email address that was previously set up
/// Returns [PasswordState]
class RecoverPassword extends TdFunction {
  RecoverPassword(
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

  static const String CONSTRUCTOR = 'recoverPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'recovery_code': this.recoveryCode,
        'new_password': this.newPassword,
        'new_hint': this.newHint,
        '@type': CONSTRUCTOR
      };
}
