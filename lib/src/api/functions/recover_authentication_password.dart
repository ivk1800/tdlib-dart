import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Recovers the 2-step verification password with a password recovery code
/// sent to an email address that was previously set up. Works only when the
/// current authorization state is authorizationStateWaitPassword
/// Returns [Ok]
@immutable
class RecoverAuthenticationPassword extends TdFunction {
  const RecoverAuthenticationPassword({
    required this.recoveryCode,
    required this.newPassword,
    required this.newHint,
  });

  /// [recoveryCode] Recovery code to check
  final String recoveryCode;

  /// [newPassword] New 2-step verification password of the user; may be empty
  /// to remove the password
  final String newPassword;

  /// [newHint] New password hint; may be empty
  final String newHint;

  static const String constructor = 'recoverAuthenticationPassword';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'recovery_code': recoveryCode,
        'new_password': newPassword,
        'new_hint': newHint,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
