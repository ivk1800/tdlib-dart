import '../tdapi.dart';

/// The chat is a private or secret chat with a mutual contact and the user's
/// phone number can be shared with the other user using the method
/// sharePhoneNumber
class ChatActionBarSharePhoneNumber extends ChatActionBar {
  const ChatActionBarSharePhoneNumber();

  static const String CONSTRUCTOR = 'chatActionBarSharePhoneNumber';

  static ChatActionBarSharePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarSharePhoneNumber();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
