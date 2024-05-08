import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends 2-10 messages grouped together into an album on behalf of a business
/// account; for bots only. Currently, only audio, document, photo and video
/// messages can be grouped into an album. Documents and audio files can be
/// only grouped in an album with messages of the same type. Returns sent
/// messages
/// Returns [BusinessMessages]
@immutable
class SendBusinessMessageAlbum extends TdFunction {
  const SendBusinessMessageAlbum({
    required this.businessConnectionId,
    required this.chatId,
    this.replyTo,
    required this.disableNotification,
    required this.protectContent,
    required this.inputMessageContents,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request
  final String businessConnectionId;

  /// [chatId] Target chat
  final int chatId;

  /// [replyTo] Information about the message to be replied; pass null if none
  final InputMessageReplyTo? replyTo;

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [protectContent] Pass true if the content of the message must be protected
  /// from forwarding and saving
  final bool protectContent;

  /// [inputMessageContents] Contents of messages to be sent. At most 10
  /// messages can be added to an album
  final List<InputMessageContent> inputMessageContents;

  static const String constructor = 'sendBusinessMessageAlbum';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'chat_id': chatId,
        'reply_to': replyTo?.toJson(),
        'disable_notification': disableNotification,
        'protect_content': protectContent,
        'input_message_contents':
            inputMessageContents.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
