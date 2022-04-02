import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents the current authorization state of the TDLib client
abstract class AuthorizationState extends TdObject {
  const AuthorizationState();

  static const String CONSTRUCTOR = 'authorizationState';

  /// Inherited by:
  /// [AuthorizationStateWaitTdlibParameters]
  /// [AuthorizationStateWaitEncryptionKey]
  /// [AuthorizationStateWaitPhoneNumber]
  /// [AuthorizationStateWaitCode]
  /// [AuthorizationStateWaitOtherDeviceConfirmation]
  /// [AuthorizationStateWaitRegistration]
  /// [AuthorizationStateWaitPassword]
  /// [AuthorizationStateReady]
  /// [AuthorizationStateLoggingOut]
  /// [AuthorizationStateClosing]
  /// [AuthorizationStateClosed]
  static AuthorizationState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case AuthorizationStateWaitTdlibParameters.CONSTRUCTOR:
        return AuthorizationStateWaitTdlibParameters.fromJson(json);
      case AuthorizationStateWaitEncryptionKey.CONSTRUCTOR:
        return AuthorizationStateWaitEncryptionKey.fromJson(json);
      case AuthorizationStateWaitPhoneNumber.CONSTRUCTOR:
        return AuthorizationStateWaitPhoneNumber.fromJson(json);
      case AuthorizationStateWaitCode.CONSTRUCTOR:
        return AuthorizationStateWaitCode.fromJson(json);
      case AuthorizationStateWaitOtherDeviceConfirmation.CONSTRUCTOR:
        return AuthorizationStateWaitOtherDeviceConfirmation.fromJson(json);
      case AuthorizationStateWaitRegistration.CONSTRUCTOR:
        return AuthorizationStateWaitRegistration.fromJson(json);
      case AuthorizationStateWaitPassword.CONSTRUCTOR:
        return AuthorizationStateWaitPassword.fromJson(json);
      case AuthorizationStateReady.CONSTRUCTOR:
        return AuthorizationStateReady.fromJson(json);
      case AuthorizationStateLoggingOut.CONSTRUCTOR:
        return AuthorizationStateLoggingOut.fromJson(json);
      case AuthorizationStateClosing.CONSTRUCTOR:
        return AuthorizationStateClosing.fromJson(json);
      case AuthorizationStateClosed.CONSTRUCTOR:
        return AuthorizationStateClosed.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
