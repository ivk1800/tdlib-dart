import '../tdapi.dart';

/// Closes the TDLib instance after a proper logout. Requires an available
/// network connection. All local data will be destroyed. After the logout
/// completes, updateAuthorizationState with authorizationStateClosed will be
/// sent
/// Returns [Ok]
class LogOut extends TdFunction {
  LogOut();

  static const String CONSTRUCTOR = 'logOut';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
