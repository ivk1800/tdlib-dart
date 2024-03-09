import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends 2-10 messages grouped together into an album. Currently, only audio,
/// document, photo and video messages can be grouped into an album. Documents
/// and audio files can be only grouped in an album with messages of the same
/// type. Returns sent messages
/// Returns [Messages]
@immutable
class SendMessageAlbum extends TdFunction {
  const SendMessageAlbum({
    required this.chatId,
    required this.messageThreadId,
    this.replyTo,
    this.options,
    required this.inputMessageContents,
  });

  /// [chatId] Target chat
  final int chatId;

  /// [messageThreadId] If not 0, the message thread identifier in which the
  /// messages will be sent
  final int messageThreadId;

  /// [replyTo] Information about the message or story to be replied; pass null
  /// if none
  final InputMessageReplyTo? replyTo;

  /// [options] Options to be used to send the messages; pass null to use
  /// default options
  final MessageSendOptions? options;

  /// [inputMessageContents] Contents of messages to be sent. At most 10
  /// messages can be added to an album
  final List<InputMessageContent> inputMessageContents;

  static const String constructor = 'sendMessageAlbum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        'reply_to': replyTo?.toJson(),
        'options': options?.toJson(),
        'input_message_contents':
            inputMessageContents.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
