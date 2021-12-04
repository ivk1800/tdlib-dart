import '../tdapi.dart';

/// Deletes the default reply markup from a chat. Must be called after a
/// one-time keyboard or a ForceReply reply markup has been used.
/// UpdateChatReplyMarkup will be sent if the reply markup is changed
/// Returns [Ok]
class DeleteChatReplyMarkup extends TdFunction {
  DeleteChatReplyMarkup({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] The message identifier of the used keyboard
  final int messageId;

  static const String CONSTRUCTOR = 'deleteChatReplyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };
}
