import '../tdapi.dart';

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
}
