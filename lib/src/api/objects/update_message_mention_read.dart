import '../tdapi.dart';

/// A message with an unread mention was read
class UpdateMessageMentionRead extends Update {
  UpdateMessageMentionRead(
      {required this.chatId,
      required this.messageId,
      required this.unreadMentionCount});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [unreadMentionCount] The new number of unread mention messages left in the
  /// chat
  final int unreadMentionCount;

  static const String CONSTRUCTOR = 'updateMessageMentionRead';

  static UpdateMessageMentionRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageMentionRead(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        unreadMentionCount: json['unread_mention_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'unread_mention_count': this.unreadMentionCount,
        '@type': CONSTRUCTOR
      };
}
