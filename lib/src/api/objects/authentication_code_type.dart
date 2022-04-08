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
  /// [AuthenticationCodeTypeTelegramMessage]
  /// [AuthenticationCodeTypeSms]
  /// [AuthenticationCodeTypeCall]
  /// [AuthenticationCodeTypeFlashCall]
  /// [AuthenticationCodeTypeMissedCall]
  static AuthenticationCodeType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AuthenticationCodeTypeTelegramMessage.constructor:
        return AuthenticationCodeTypeTelegramMessage.fromJson(json);
      case AuthenticationCodeTypeSms.constructor:
        return AuthenticationCodeTypeSms.fromJson(json);
      case AuthenticationCodeTypeCall.constructor:
        return AuthenticationCodeTypeCall.fromJson(json);
      case AuthenticationCodeTypeFlashCall.constructor:
        return AuthenticationCodeTypeFlashCall.fromJson(json);
      case AuthenticationCodeTypeMissedCall.constructor:
        return AuthenticationCodeTypeMissedCall.fromJson(json);
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
