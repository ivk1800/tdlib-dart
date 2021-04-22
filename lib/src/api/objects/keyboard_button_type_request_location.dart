import '../tdapi.dart';

/// A button that sends the user's location when pressed; available only in
/// private chats
class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  const KeyboardButtonTypeRequestLocation();

  static const String CONSTRUCTOR = 'keyboardButtonTypeRequestLocation';

  static KeyboardButtonTypeRequestLocation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const KeyboardButtonTypeRequestLocation();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
