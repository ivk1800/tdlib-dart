import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message sender activity in the chat has changed
@immutable
class UpdateChatAction extends Update {
  const UpdateChatAction({
    required this.chatId,
    required this.messageThreadId,
    required this.senderId,
    required this.action,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the
  /// action was performed
  final int messageThreadId;

  /// [senderId] Identifier of a message sender performing the action
  final MessageSender senderId;

  /// [action] The action
  final ChatAction action;

  static const String constructor = 'updateChatAction';

  static UpdateChatAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAction(
      chatId: json['chat_id'],
      messageThreadId: json['message_thread_id'],
      senderId: MessageSender.fromJson(json['sender_id'])!,
      action: ChatAction.fromJson(json['action'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        'sender_id': senderId.toJson(),
        'action': action.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
