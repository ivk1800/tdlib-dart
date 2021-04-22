import '../tdapi.dart';

/// The chat is a private or secret chat and the other user can be added to
/// the contact list using the method addContact
class ChatActionBarAddContact extends ChatActionBar {
  const ChatActionBarAddContact();

  static const String CONSTRUCTOR = 'chatActionBarAddContact';

  static ChatActionBarAddContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionBarAddContact();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
