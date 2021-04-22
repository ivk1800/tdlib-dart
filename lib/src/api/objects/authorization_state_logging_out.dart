import '../tdapi.dart';

/// The user is currently logging out
class AuthorizationStateLoggingOut extends AuthorizationState {
  const AuthorizationStateLoggingOut();

  static const String CONSTRUCTOR = 'authorizationStateLoggingOut';

  static AuthorizationStateLoggingOut? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateLoggingOut();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
