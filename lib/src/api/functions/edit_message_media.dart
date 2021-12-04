import '../tdapi.dart';

/// Edits the content of a message with an animation, an audio, a document, a
/// photo or a video, including message caption. If only the caption needs to
/// be edited, use editMessageCaption instead.. The media can't be edited if
/// the message was set to self-destruct or to a self-destructing media. The
/// type of message content in an album can't be changed with exception of
/// replacing a photo with a video or vice versa. Returns the edited message
/// after the edit is completed on the server side
/// Returns [Message]
class EditMessageMedia extends TdFunction {
  EditMessageMedia(
      {required this.chatId,
      required this.messageId,
      this.replyMarkup,
      required this.inputMessageContent});

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the
  /// following types: inputMessageAnimation, inputMessageAudio,
  /// inputMessageDocument, inputMessagePhoto or inputMessageVideo
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'editMessageMedia';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'reply_markup': this.replyMarkup?.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR
      };
}
