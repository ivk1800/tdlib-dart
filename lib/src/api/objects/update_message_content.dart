import '../tdapi.dart';

/// The message content has changed
class UpdateMessageContent extends Update {
  UpdateMessageContent(
      {required this.chatId,
      required this.messageId,
      required this.newContent});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [newContent] New message content
  final MessageContent newContent;

  static const String CONSTRUCTOR = 'updateMessageContent';

  static UpdateMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageContent(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        newContent: MessageContent.fromJson(json['new_content'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'new_content': this.newContent.toJson(),
        '@type': CONSTRUCTOR
      };
}
