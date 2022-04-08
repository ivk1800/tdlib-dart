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
  });

  /// [reason] The reason why the account was deleted; optional
  final String? reason;

  static const String constructor = 'deleteAccount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reason': reason,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
