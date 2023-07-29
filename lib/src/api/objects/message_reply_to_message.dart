import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a replied message
@immutable
class MessageReplyToMessage extends MessageReplyTo {
  const MessageReplyToMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] The identifier of the chat to which the replied message belongs;
  /// ignored for outgoing replies. For example, messages in the Replies chat
  /// are replies to messages in different chats
  final int chatId;

  /// [messageId] The identifier of the replied message
  final int messageId;

  static const String constructor = 'messageReplyToMessage';

  static MessageReplyToMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReplyToMessage(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
