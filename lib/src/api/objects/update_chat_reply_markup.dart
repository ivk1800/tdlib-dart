import '../tdapi.dart';

/// The default chat reply markup was changed. Can occur because new messages
/// with reply markup were received or because an old reply markup was hidden
/// by the user
class UpdateChatReplyMarkup extends Update {
  UpdateChatReplyMarkup(
      {required this.chatId, required this.replyMarkupMessageId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup
  /// needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  static const String CONSTRUCTOR = 'updateChatReplyMarkup';

  static UpdateChatReplyMarkup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReplyMarkup(
        chatId: json['chat_id'],
        replyMarkupMessageId: json['reply_markup_message_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'reply_markup_message_id': this.replyMarkupMessageId,
        '@type': CONSTRUCTOR
      };
}
