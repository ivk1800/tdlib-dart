import '../tdapi.dart';

/// Sends 2-10 messages grouped together into an album. Currently only audio,
/// document, photo and video messages can be grouped into an album. Documents
/// and audio files can be only grouped in an album with messages of the same
/// type. Returns sent messages
/// Returns [Messages]
class SendMessageAlbum extends TdFunction {
  SendMessageAlbum(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyToMessageId,
      this.options,
      required this.inputMessageContents});

  /// [chatId] Target chat
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the
  /// messages will be sent
  final int messageThreadId;

  /// [replyToMessageId] Identifier of a message to reply to or 0
  final int replyToMessageId;

  /// [options] Options to be used to send the messages; pass null to use
  /// default options
  final MessageSendOptions? options;

  /// [inputMessageContents] Contents of messages to be sent. At most 10
  /// messages can be added to an album
  final List<InputMessageContent> inputMessageContents;

  static const String CONSTRUCTOR = 'sendMessageAlbum';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'reply_to_message_id': this.replyToMessageId,
        'options': this.options?.toJson(),
        'input_message_contents':
            inputMessageContents.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
