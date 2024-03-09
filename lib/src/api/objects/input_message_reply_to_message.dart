import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a message to be replied
@immutable
class InputMessageReplyToMessage extends InputMessageReplyTo {
  const InputMessageReplyToMessage({
    required this.chatId,
    required this.messageId,
    this.quote,
  });

  /// [chatId] The identifier of the chat to which the message to be replied
  /// belongs; pass 0 if the message to be replied is in the same chat. Must
  /// always be 0 for replies in secret chats. A message can be replied in
  /// another chat or topic only if message.can_be_replied_in_another_chat
  final int chatId;

  /// [messageId] The identifier of the message to be replied in the same or the
  /// specified chat
  final int messageId;

  /// [quote] Quote from the message to be replied; pass null if none. Must
  /// always be null for replies in secret chats
  final InputTextQuote? quote;

  static const String constructor = 'inputMessageReplyToMessage';

  static InputMessageReplyToMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageReplyToMessage(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      quote: InputTextQuote.fromJson(json['quote'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'quote': quote?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
