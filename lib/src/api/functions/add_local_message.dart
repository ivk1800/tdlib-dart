import '../tdapi.dart';

/// Adds a local message to a chat. The message is persistent across
/// application restarts only if the message database is used. Returns the
/// added message
/// Returns [Message]
class AddLocalMessage extends TdFunction {
  AddLocalMessage(
      {required this.chatId,
      required this.sender,
      required this.replyToMessageId,
      required this.disableNotification,
      required this.inputMessageContent});

  /// [chatId] Target chat
  final int chatId;

  /// [sender] The sender of the message
  final MessageSender sender;

  /// [replyToMessageId] Identifier of the message to reply to or 0
  final int replyToMessageId;

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [inputMessageContent] The content of the message to be added
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'addLocalMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'sender': this.sender.toJson(),
        'reply_to_message_id': this.replyToMessageId,
        'disable_notification': this.disableNotification,
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR
      };
}
