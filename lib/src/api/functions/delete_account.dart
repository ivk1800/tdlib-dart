import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes the account of the current user, deleting all information
/// associated with the user from the server. The phone number of the account
/// can be used to create a new account. Can be called before authorization
/// when the current authorization state is authorizationStateWaitPassword
/// Returns [Ok]
@immutable
class DeleteAccount extends TdFunction {
  const DeleteAccount({
    this.reason,
    required this.password,
  });

  /// [reason] The reason why the account was deleted; optional
  final String? reason;

  /// [password] The 2-step verification password of the current user. If the
  /// current user isn't authorized, then an empty string can be passed and
  /// account deletion can be canceled within one week
  final String password;

  static const String constructor = 'deleteAccount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reason': reason,
        'password': password,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
