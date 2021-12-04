import '../tdapi.dart';

/// Returns information about a message that is replied by a given message.
/// Also returns the pinned message, the game message, and the invoice message
/// for messages of the types messagePinMessage, messageGameScore, and
/// messagePaymentSuccessful respectively
/// Returns [Message]
class GetRepliedMessage extends TdFunction {
  GetRepliedMessage({required this.chatId, required this.messageId});

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the reply message
  final int messageId;

  static const String CONSTRUCTOR = 'getRepliedMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };
}
