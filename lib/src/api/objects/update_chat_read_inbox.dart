import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Incoming messages were read or the number of unread messages has been
/// changed
@immutable
class UpdateChatReadInbox extends Update {
  const UpdateChatReadInbox({
    required this.chatId,
    required this.lastReadInboxMessageId,
    required this.unreadCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [unreadCount] The number of unread messages left in the chat
  final int unreadCount;

  static const String constructor = 'updateChatReadInbox';

  static UpdateChatReadInbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReadInbox(
      chatId: json['chat_id'],
      lastReadInboxMessageId: json['last_read_inbox_message_id'],
      unreadCount: json['unread_count'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'last_read_inbox_message_id': lastReadInboxMessageId,
        'unread_count': unreadCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
