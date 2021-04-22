import '../tdapi.dart';

/// TDLib needs the user's phone number to authorize. Call
class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  const AuthorizationStateWaitPhoneNumber();

  static const String CONSTRUCTOR = 'authorizationStateWaitPhoneNumber';

  static AuthorizationStateWaitPhoneNumber? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateWaitPhoneNumber();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
