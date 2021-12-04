import '../tdapi.dart';

/// Incoming messages were read or the number of unread messages has been
/// changed
class UpdateChatReadInbox extends Update {
  UpdateChatReadInbox(
      {required this.chatId,
      required this.lastReadInboxMessageId,
      required this.unreadCount});

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [unreadCount] The number of unread messages left in the chat
  final int unreadCount;

  static const String CONSTRUCTOR = 'updateChatReadInbox';

  static UpdateChatReadInbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReadInbox(
        chatId: json['chat_id'],
        lastReadInboxMessageId: json['last_read_inbox_message_id'],
        unreadCount: json['unread_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'last_read_inbox_message_id': this.lastReadInboxMessageId,
        'unread_count': this.unreadCount,
        '@type': CONSTRUCTOR
      };
}
