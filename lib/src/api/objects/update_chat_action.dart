import '../tdapi.dart';

/// A message sender activity in the chat has changed
class UpdateChatAction extends Update {
  UpdateChatAction(
      {required this.chatId,
      required this.messageThreadId,
      required this.senderId,
      required this.action});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the
  /// action was performed
  final int messageThreadId;

  /// [senderId] Identifier of a message sender performing the action
  final MessageSender senderId;

  /// [action] The action
  final ChatAction action;

  static const String CONSTRUCTOR = 'updateChatAction';

  static UpdateChatAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAction(
        chatId: json['chat_id'],
        messageThreadId: json['message_thread_id'],
        senderId: MessageSender.fromJson(json['sender_id'])!,
        action: ChatAction.fromJson(json['action'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'sender_id': this.senderId.toJson(),
        'action': this.action.toJson(),
        '@type': CONSTRUCTOR
      };
}
