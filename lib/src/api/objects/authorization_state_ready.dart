import '../tdapi.dart';

/// The user has been successfully authorized. TDLib is now ready to answer
/// queries
class AuthorizationStateReady extends AuthorizationState {
  const AuthorizationStateReady();

  static const String CONSTRUCTOR = 'authorizationStateReady';

  static AuthorizationStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateReady();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
