import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a keyboard button type
@immutable
abstract class KeyboardButtonType extends TdObject {
  const KeyboardButtonType();

  static const String constructor = 'keyboardButtonType';

  /// Inherited by:
  /// [KeyboardButtonTypeRequestChat]
  /// [KeyboardButtonTypeRequestLocation]
  /// [KeyboardButtonTypeRequestPhoneNumber]
  /// [KeyboardButtonTypeRequestPoll]
  /// [KeyboardButtonTypeRequestUser]
  /// [KeyboardButtonTypeText]
  /// [KeyboardButtonTypeWebApp]
  static KeyboardButtonType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case KeyboardButtonTypeRequestChat.constructor:
        return KeyboardButtonTypeRequestChat.fromJson(json);
      case KeyboardButtonTypeRequestLocation.constructor:
        return KeyboardButtonTypeRequestLocation.fromJson(json);
      case KeyboardButtonTypeRequestPhoneNumber.constructor:
        return KeyboardButtonTypeRequestPhoneNumber.fromJson(json);
      case KeyboardButtonTypeRequestPoll.constructor:
        return KeyboardButtonTypeRequestPoll.fromJson(json);
      case KeyboardButtonTypeRequestUser.constructor:
        return KeyboardButtonTypeRequestUser.fromJson(json);
      case KeyboardButtonTypeText.constructor:
        return KeyboardButtonTypeText.fromJson(json);
      case KeyboardButtonTypeWebApp.constructor:
        return KeyboardButtonTypeWebApp.fromJson(json);
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
