import '../tdapi.dart';

/// A message was edited. Changes in the message content will come in a
/// separate updateMessageContent
class UpdateMessageEdited extends Update {
  UpdateMessageEdited(
      {required this.chatId,
      required this.messageId,
      required this.editDate,
      this.replyMarkup});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [editDate] Point in time (Unix timestamp) when the message was edited
  final int editDate;

  /// [replyMarkup] New message reply markup; may be null
  final ReplyMarkup? replyMarkup;

  static const String CONSTRUCTOR = 'updateMessageEdited';

  static UpdateMessageEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageEdited(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        editDate: json['edit_date'],
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'edit_date': this.editDate,
        'reply_markup': this.replyMarkup?.toJson(),
        '@type': CONSTRUCTOR
      };
}
