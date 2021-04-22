import '../tdapi.dart';

/// A main list of chats
class ChatListMain extends ChatList {
  const ChatListMain();

  static const String CONSTRUCTOR = 'chatListMain';

  static ChatListMain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatListMain();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
