import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the password for the current user. If a new recovery email address
/// is specified, then the change will not be applied until the new recovery
/// email address is confirmed
/// Returns [PasswordState]
class SetPassword extends TdFunction {
  SetPassword(
      {required this.oldPassword,
      required this.newPassword,
      required this.newHint,
      required this.setRecoveryEmailAddress,
      required this.newRecoveryEmailAddress});

  /// [oldPassword] Previous password of the user
  final String oldPassword;

  /// [newPassword] New password of the user; may be empty to remove the
  /// password
  final String newPassword;

  /// [newHint] New password hint; may be empty
  final String newHint;

  /// [setRecoveryEmailAddress] Pass true if the recovery email address must be
  /// changed
  final bool setRecoveryEmailAddress;

  /// [newRecoveryEmailAddress] New recovery email address; may be empty
  final String newRecoveryEmailAddress;

  static const String CONSTRUCTOR = 'setPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_password': this.oldPassword,
        'new_password': this.newPassword,
        'new_hint': this.newHint,
        'set_recovery_email_address': this.setRecoveryEmailAddress,
        'new_recovery_email_address': this.newRecoveryEmailAddress,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
