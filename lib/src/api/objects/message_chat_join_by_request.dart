import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A new member was accepted to the chat by an administrator
class MessageChatJoinByRequest extends MessageContent {
  const MessageChatJoinByRequest();

  static const String CONSTRUCTOR = 'messageChatJoinByRequest';

  static MessageChatJoinByRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageChatJoinByRequest();
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
