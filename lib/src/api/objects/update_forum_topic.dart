import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Information about a topic in a forum chat was changed
@immutable
class UpdateForumTopic extends Update {
  const UpdateForumTopic({
    required this.chatId,
    required this.messageThreadId,
    required this.isPinned,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.unreadReactionCount,
    required this.notificationSettings,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] Message thread identifier of the topic
  final int messageThreadId;

  /// [isPinned] True, if the topic is pinned in the topic list
  final bool isPinned;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the
  /// topic
  final int unreadMentionCount;

  /// [unreadReactionCount] Number of messages with unread reactions in the
  /// topic
  final int unreadReactionCount;

  /// [notificationSettings] Notification settings for the topic
  final ChatNotificationSettings notificationSettings;

  static const String constructor = 'updateForumTopic';

  static UpdateForumTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateForumTopic(
      chatId: json['chat_id'] as int,
      messageThreadId: json['message_thread_id'] as int,
      isPinned: json['is_pinned'] as bool,
      lastReadInboxMessageId: json['last_read_inbox_message_id'] as int,
      lastReadOutboxMessageId: json['last_read_outbox_message_id'] as int,
      unreadMentionCount: json['unread_mention_count'] as int,
      unreadReactionCount: json['unread_reaction_count'] as int,
      notificationSettings: ChatNotificationSettings.fromJson(
        json['notification_settings'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'is_pinned': isPinned,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'unread_mention_count': unreadMentionCount,
    'unread_reaction_count': unreadReactionCount,
    'notification_settings': notificationSettings.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
