import '../tdapi.dart';

/// The message pinned state was changed
class UpdateMessageIsPinned extends Update {
  UpdateMessageIsPinned(
      {required this.chatId, required this.messageId, required this.isPinned});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] The message identifier
  final int messageId;

  /// [isPinned] True, if the message is pinned
  final bool isPinned;

  static const String CONSTRUCTOR = 'updateMessageIsPinned';

  static UpdateMessageIsPinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageIsPinned(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };
}
