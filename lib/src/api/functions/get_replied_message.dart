import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a non-bundled message that is replied by a given
/// message. Also, returns the pinned message, the game message, the invoice
/// message, the message with a previously set same background, and the topic
/// creation message for messages of the types messagePinMessage,
/// messageGameScore, messagePaymentSuccessful, messageChatSetBackground and
/// topic messages without non-bundled replied message respectively
/// Returns [Message]
@immutable
class GetRepliedMessage extends TdFunction {
  const GetRepliedMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the reply message
  final int messageId;

  static const String constructor = 'getRepliedMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
