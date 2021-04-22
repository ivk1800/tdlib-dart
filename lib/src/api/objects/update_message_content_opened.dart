import '../tdapi.dart';

/// The message content was opened. Updates voice note messages to "listened",
/// video note messages to "viewed" and starts the TTL timer for
/// self-destructing messages
class UpdateMessageContentOpened extends Update {
  UpdateMessageContentOpened({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  static const String CONSTRUCTOR = 'updateMessageContentOpened';

  static UpdateMessageContentOpened? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageContentOpened(
        chatId: json['chat_id'], messageId: json['message_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };
}
