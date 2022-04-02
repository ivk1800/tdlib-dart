import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
