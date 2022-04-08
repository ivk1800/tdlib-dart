import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the current authorization state of the TDLib client
@immutable
abstract class AuthorizationState extends TdObject {
  const AuthorizationState();

  static const String constructor = 'authorizationState';

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

    switch (json['@type']) {
      case AuthorizationStateWaitTdlibParameters.constructor:
        return AuthorizationStateWaitTdlibParameters.fromJson(json);
      case AuthorizationStateWaitEncryptionKey.constructor:
        return AuthorizationStateWaitEncryptionKey.fromJson(json);
      case AuthorizationStateWaitPhoneNumber.constructor:
        return AuthorizationStateWaitPhoneNumber.fromJson(json);
      case AuthorizationStateWaitCode.constructor:
        return AuthorizationStateWaitCode.fromJson(json);
      case AuthorizationStateWaitOtherDeviceConfirmation.constructor:
        return AuthorizationStateWaitOtherDeviceConfirmation.fromJson(json);
      case AuthorizationStateWaitRegistration.constructor:
        return AuthorizationStateWaitRegistration.fromJson(json);
      case AuthorizationStateWaitPassword.constructor:
        return AuthorizationStateWaitPassword.fromJson(json);
      case AuthorizationStateReady.constructor:
        return AuthorizationStateReady.fromJson(json);
      case AuthorizationStateLoggingOut.constructor:
        return AuthorizationStateLoggingOut.fromJson(json);
      case AuthorizationStateClosing.constructor:
        return AuthorizationStateClosing.fromJson(json);
      case AuthorizationStateClosed.constructor:
        return AuthorizationStateClosed.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
