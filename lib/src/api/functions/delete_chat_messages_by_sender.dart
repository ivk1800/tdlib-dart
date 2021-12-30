import '../tdapi.dart';

/// Deletes all messages sent by the specified message sender in a chat.
/// Supported only for supergroups; requires can_delete_messages administrator
/// privileges
/// Returns [Ok]
class DeleteChatMessagesBySender extends TdFunction {
  DeleteChatMessagesBySender({required this.chatId, required this.senderId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [senderId] Identifier of the sender of messages to delete
  final MessageSender senderId;

  static const String CONSTRUCTOR = 'deleteChatMessagesBySender';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'sender_id': this.senderId.toJson(),
        '@type': CONSTRUCTOR
      };
}
