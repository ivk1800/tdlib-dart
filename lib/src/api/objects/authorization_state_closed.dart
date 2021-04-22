import '../tdapi.dart';

/// TDLib client is in its final state. All databases are closed and all
/// resources are released. No other updates will be received after this. All
/// queries will be responded to. with error code 500. To continue working,
/// one should create a new instance of the TDLib client
class AuthorizationStateClosed extends AuthorizationState {
  const AuthorizationStateClosed();

  static const String CONSTRUCTOR = 'authorizationStateClosed';

  static AuthorizationStateClosed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateClosed();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
