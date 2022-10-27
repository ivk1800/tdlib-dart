import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// TDLib needs the user's phone number to authorize. Call
/// `setAuthenticationPhoneNumber` to provide the phone number, or use
/// `requestQrCodeAuthentication`, or `checkAuthenticationBotToken` for other
/// authentication options
@immutable
class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  const AuthorizationStateWaitPhoneNumber();

  static const String constructor = 'authorizationStateWaitPhoneNumber';

  static AuthorizationStateWaitPhoneNumber? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const AuthorizationStateWaitPhoneNumber();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
