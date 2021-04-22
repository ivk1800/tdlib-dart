import '../tdapi.dart';

/// User activity in the chat has changed
class UpdateUserChatAction extends Update {
  UpdateUserChatAction(
      {required this.chatId,
      required this.messageThreadId,
      required this.userId,
      required this.action});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the
  /// action was performed
  final int messageThreadId;

  /// [userId] Identifier of a user performing an action
  final int userId;

  /// [action] The action description
  final ChatAction action;

  static const String CONSTRUCTOR = 'updateUserChatAction';

  static UpdateUserChatAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserChatAction(
        chatId: json['chat_id'],
        messageThreadId: json['message_thread_id'],
        userId: json['user_id'],
        action: ChatAction.fromJson(json['action'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'user_id': this.userId,
        'action': this.action.toJson(),
        '@type': CONSTRUCTOR
      };
}
