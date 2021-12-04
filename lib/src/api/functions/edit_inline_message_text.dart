import '../tdapi.dart';

/// Edits the text of an inline text or game message sent via a bot; for bots
/// only
/// Returns [Ok]
class EditInlineMessageText extends TdFunction {
  EditInlineMessageText(
      {required this.inlineMessageId,
      this.replyMarkup,
      required this.inputMessageContent});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New text content of the message. Must be of type
  /// inputMessageText
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'editInlineMessageText';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'reply_markup': this.replyMarkup?.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR
      };
}
