import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Provides information about the method by which an authentication code is
/// delivered to the user
@immutable
abstract class AuthenticationCodeType extends TdObject {
  const AuthenticationCodeType();

  static const String constructor = 'authenticationCodeType';

  /// Inherited by:
  /// [AuthenticationCodeTypeCall]
  /// [AuthenticationCodeTypeFirebaseAndroid]
  /// [AuthenticationCodeTypeFirebaseIos]
  /// [AuthenticationCodeTypeFlashCall]
  /// [AuthenticationCodeTypeFragment]
  /// [AuthenticationCodeTypeMissedCall]
  /// [AuthenticationCodeTypeSmsPhrase]
  /// [AuthenticationCodeTypeSmsWord]
  /// [AuthenticationCodeTypeSms]
  /// [AuthenticationCodeTypeTelegramMessage]
  static AuthenticationCodeType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AuthenticationCodeTypeCall.constructor:
        return AuthenticationCodeTypeCall.fromJson(json);
      case AuthenticationCodeTypeFirebaseAndroid.constructor:
        return AuthenticationCodeTypeFirebaseAndroid.fromJson(json);
      case AuthenticationCodeTypeFirebaseIos.constructor:
        return AuthenticationCodeTypeFirebaseIos.fromJson(json);
      case AuthenticationCodeTypeFlashCall.constructor:
        return AuthenticationCodeTypeFlashCall.fromJson(json);
      case AuthenticationCodeTypeFragment.constructor:
        return AuthenticationCodeTypeFragment.fromJson(json);
      case AuthenticationCodeTypeMissedCall.constructor:
        return AuthenticationCodeTypeMissedCall.fromJson(json);
      case AuthenticationCodeTypeSms.constructor:
        return AuthenticationCodeTypeSms.fromJson(json);
      case AuthenticationCodeTypeSmsPhrase.constructor:
        return AuthenticationCodeTypeSmsPhrase.fromJson(json);
      case AuthenticationCodeTypeSmsWord.constructor:
        return AuthenticationCodeTypeSmsWord.fromJson(json);
      case AuthenticationCodeTypeTelegramMessage.constructor:
        return AuthenticationCodeTypeTelegramMessage.fromJson(json);
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
