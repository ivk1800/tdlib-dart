import '../tdapi.dart';

/// Edits the content of a message with an animation, an audio, a document, a
/// photo or a video in an inline message sent via a bot; for bots only
/// Returns [Ok]
class EditInlineMessageMedia extends TdFunction {
  EditInlineMessageMedia(
      {required this.inlineMessageId,
      this.replyMarkup,
      required this.inputMessageContent});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the
  /// following types: inputMessageAnimation, inputMessageAudio,
  /// inputMessageDocument, inputMessagePhoto or inputMessageVideo
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'editInlineMessageMedia';

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
