import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the password for the current user. If a new recovery email address
/// is specified, then the change will not be applied until the new recovery
/// email address is confirmed
/// Returns [PasswordState]
@immutable
class SetPassword extends TdFunction {
  const SetPassword({
    required this.oldPassword,
    required this.newPassword,
    required this.newHint,
    required this.setRecoveryEmailAddress,
    required this.newRecoveryEmailAddress,
  });

  /// [oldPassword] Previous password of the user
  final String oldPassword;

  /// [newPassword] New password of the user; may be empty to remove the
  /// password
  final String newPassword;

  /// [newHint] New password hint; may be empty
  final String newHint;

  /// [setRecoveryEmailAddress] Pass true to change also the recovery email
  /// address
  final bool setRecoveryEmailAddress;

  /// [newRecoveryEmailAddress] New recovery email address; may be empty
  final String newRecoveryEmailAddress;

  static const String constructor = 'setPassword';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_password': oldPassword,
        'new_password': newPassword,
        'new_hint': newHint,
        'set_recovery_email_address': setRecoveryEmailAddress,
        'new_recovery_email_address': newRecoveryEmailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
