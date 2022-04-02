import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A new member joined the chat via an invite link
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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
