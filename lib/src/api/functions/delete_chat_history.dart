import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Deletes all messages in the chat. Use chat.can_be_deleted_only_for_self
/// and chat.can_be_deleted_for_all_users fields to find whether and how the
/// method can be applied to the chat
/// Returns [Ok]
class DeleteChatHistory extends TdFunction {
  DeleteChatHistory(
      {required this.chatId,
      required this.removeFromChatList,
      required this.revoke});

  /// [chatId] Chat identifier
  final int chatId;

  /// [removeFromChatList] Pass true if the chat needs to be removed from the
  /// chat list
  final bool removeFromChatList;

  /// [revoke] Pass true to delete chat history for all users
  final bool revoke;

  static const String CONSTRUCTOR = 'deleteChatHistory';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'remove_from_chat_list': this.removeFromChatList,
        'revoke': this.revoke,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
