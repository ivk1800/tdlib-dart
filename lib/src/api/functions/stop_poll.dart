import '../tdapi.dart';

/// Stops a poll. A poll in a message can be stopped when the message has
/// can_be_edited flag set
/// Returns [Ok]
class StopPoll extends TdFunction {
  StopPoll({required this.chatId, required this.messageId, this.replyMarkup});

  /// [chatId] Identifier of the chat to which the poll belongs
  final int chatId;

  /// [messageId] Identifier of the message containing the poll
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  static const String CONSTRUCTOR = 'stopPoll';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'reply_markup': this.replyMarkup?.toJson(),
        '@type': CONSTRUCTOR
      };
}
