import '../tdapi.dart';

/// Edits the content of a message with an animation, an audio, a document, a
/// photo or a video. The media in the message can't be replaced if the
/// message was set to self-destruct. Media can't be replaced by
/// self-destructing media. Media in an album can be edited only to contain a
/// photo or a video. Returns the edited message after the edit is completed
/// on the server side
/// Returns [Message]
class EditMessageMedia extends TdFunction {
  EditMessageMedia(
      {required this.chatId,
      required this.messageId,
      required this.replyMarkup,
      required this.inputMessageContent});

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; for bots only
  final ReplyMarkup replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the
  /// following types: InputMessageAnimation, InputMessageAudio,
  /// InputMessageDocument, InputMessagePhoto or InputMessageVideo
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'editMessageMedia';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'reply_markup': this.replyMarkup.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR
      };
}
