import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the 2-step verification recovery email address of the user. If a
/// new recovery email address is specified, then the change will not be
/// applied until the new recovery email address is confirmed.. If
/// new_recovery_email_address is the same as the email address that is
/// currently set up, this call succeeds immediately and aborts all other
/// requests waiting for an email confirmation
/// Returns [PasswordState]
class SetRecoveryEmailAddress extends TdFunction {
  SetRecoveryEmailAddress(
      {required this.password, required this.newRecoveryEmailAddress});

  /// [password] Password of the current user
  final String password;

  /// [newRecoveryEmailAddress] New recovery email address
  final String newRecoveryEmailAddress;

  static const String CONSTRUCTOR = 'setRecoveryEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'password': this.password,
        'new_recovery_email_address': this.newRecoveryEmailAddress,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
