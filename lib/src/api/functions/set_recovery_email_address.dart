import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the 2-step verification recovery email address of the user. If a
/// new recovery email address is specified, then the change will not be
/// applied until the new recovery email address is confirmed.. If
/// new_recovery_email_address is the same as the email address that is
/// currently set up, this call succeeds immediately and aborts all other
/// requests waiting for an email confirmation
/// Returns [PasswordState]
@immutable
class SetRecoveryEmailAddress extends TdFunction {
  const SetRecoveryEmailAddress({
    required this.password,
    required this.newRecoveryEmailAddress,
  });

  /// [password] Password of the current user
  final String password;

  /// [newRecoveryEmailAddress] New recovery email address
  final String newRecoveryEmailAddress;

  static const String constructor = 'setRecoveryEmailAddress';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password': password,
        'new_recovery_email_address': newRecoveryEmailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
