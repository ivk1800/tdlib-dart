import '../tdapi.dart';

/// A new member joined the chat by invite link
class MessageChatJoinByLink extends MessageContent {
  const MessageChatJoinByLink();

  static const String CONSTRUCTOR = 'messageChatJoinByLink';

  static MessageChatJoinByLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageChatJoinByLink();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
