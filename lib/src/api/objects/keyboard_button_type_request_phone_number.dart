import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A button that sends the user's phone number when pressed; available only
/// in private chats
class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  const KeyboardButtonTypeRequestPhoneNumber();

  static const String CONSTRUCTOR = 'keyboardButtonTypeRequestPhoneNumber';

  static KeyboardButtonTypeRequestPhoneNumber? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const KeyboardButtonTypeRequestPhoneNumber();
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
