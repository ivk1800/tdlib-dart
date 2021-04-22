import '../tdapi.dart';

/// Describes a keyboard button type
abstract class KeyboardButtonType extends TdObject {
  const KeyboardButtonType();

  static const String CONSTRUCTOR = 'keyboardButtonType';

  /// Inherited by:
  /// [KeyboardButtonTypeText]
  /// [KeyboardButtonTypeRequestPhoneNumber]
  /// [KeyboardButtonTypeRequestLocation]
  /// [KeyboardButtonTypeRequestPoll]
  static KeyboardButtonType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case KeyboardButtonTypeText.CONSTRUCTOR:
        return KeyboardButtonTypeText.fromJson(json);
      case KeyboardButtonTypeRequestPhoneNumber.CONSTRUCTOR:
        return KeyboardButtonTypeRequestPhoneNumber.fromJson(json);
      case KeyboardButtonTypeRequestLocation.CONSTRUCTOR:
        return KeyboardButtonTypeRequestLocation.fromJson(json);
      case KeyboardButtonTypeRequestPoll.CONSTRUCTOR:
        return KeyboardButtonTypeRequestPoll.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
