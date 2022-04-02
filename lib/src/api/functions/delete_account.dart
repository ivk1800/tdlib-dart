import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Deletes the account of the current user, deleting all information
/// associated with the user from the server. The phone number of the account
/// can be used to create a new account. Can be called before authorization
/// when the current authorization state is authorizationStateWaitPassword
/// Returns [Ok]
class DeleteAccount extends TdFunction {
  DeleteAccount({this.reason});

  /// [reason] The reason why the account was deleted; optional
  final String? reason;

  static const String CONSTRUCTOR = 'deleteAccount';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'reason': this.reason, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
