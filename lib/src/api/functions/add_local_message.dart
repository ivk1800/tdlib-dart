import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a local message to a chat. The message is persistent across
/// application restarts only if the message database is used. Returns the
/// added message
/// Returns [Message]
@immutable
class AddLocalMessage extends TdFunction {
  const AddLocalMessage({
    required this.chatId,
    required this.senderId,
    required this.replyToMessageId,
    required this.disableNotification,
    required this.inputMessageContent,
  });

  /// [chatId] Target chat
  final int chatId;

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [replyToMessageId] Identifier of the replied message; 0 if none
  final int replyToMessageId;

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [inputMessageContent] The content of the message to be added
  final InputMessageContent inputMessageContent;

  static const String constructor = 'addLocalMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'sender_id': senderId.toJson(),
        'reply_to_message_id': replyToMessageId,
        'disable_notification': disableNotification,
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
