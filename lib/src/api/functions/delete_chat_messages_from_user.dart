import '../tdapi.dart';

/// Deletes all messages sent by the specified user to a chat. Supported only
/// for supergroups; requires can_delete_messages administrator privileges
/// Returns [Ok]
class DeleteChatMessagesFromUser extends TdFunction {
  DeleteChatMessagesFromUser({required this.chatId, required this.userId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] User identifier
  final int userId;

  static const String CONSTRUCTOR = 'deleteChatMessagesFromUser';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'user_id': this.userId, '@type': CONSTRUCTOR};
}
