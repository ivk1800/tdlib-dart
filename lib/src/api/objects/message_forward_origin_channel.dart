import '../tdapi.dart';

/// The message was originally a post in a channel
class MessageForwardOriginChannel extends MessageForwardOrigin {
  MessageForwardOriginChannel(
      {required this.chatId,
      required this.messageId,
      required this.authorSignature});

  /// [chatId] Identifier of the chat from which the message was originally
  /// forwarded
  final int chatId;

  /// [messageId] Message identifier of the original message
  final int messageId;

  /// [authorSignature] Original post author signature
  final String authorSignature;

  static const String CONSTRUCTOR = 'messageForwardOriginChannel';

  static MessageForwardOriginChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageForwardOriginChannel(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        authorSignature: json['author_signature']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'author_signature': this.authorSignature,
        '@type': CONSTRUCTOR
      };
}
