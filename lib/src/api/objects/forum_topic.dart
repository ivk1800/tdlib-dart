import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a forum topic
@immutable
class ForumTopic extends TdObject {
  const ForumTopic({
    required this.info,
    this.lastMessage,
    required this.isPinned,
    required this.unreadCount,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.unreadReactionCount,
    required this.notificationSettings,
    this.draftMessage,
  });

  /// [info] Basic information about the topic
  final ForumTopicInfo info;

  /// [lastMessage] Last message in the topic; may be null if unknown
  final Message? lastMessage;

  /// [isPinned] True, if the topic is pinned in the topic list
  final bool isPinned;

  /// [unreadCount] Number of unread messages in the topic
  final int unreadCount;

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

  /// [draftMessage] A draft of a message in the topic; may be null
  final DraftMessage? draftMessage;

  static const String constructor = 'forumTopic';

  static ForumTopic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ForumTopic(
      info: ForumTopicInfo.fromJson(json['info'] as Map<String, dynamic>?)!,
      lastMessage:
          Message.fromJson(json['last_message'] as Map<String, dynamic>?),
      isPinned: json['is_pinned'] as bool,
      unreadCount: json['unread_count'] as int,
      lastReadInboxMessageId: json['last_read_inbox_message_id'] as int,
      lastReadOutboxMessageId: json['last_read_outbox_message_id'] as int,
      unreadMentionCount: json['unread_mention_count'] as int,
      unreadReactionCount: json['unread_reaction_count'] as int,
      notificationSettings: ChatNotificationSettings.fromJson(
          json['notification_settings'] as Map<String, dynamic>?)!,
      draftMessage:
          DraftMessage.fromJson(json['draft_message'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'info': info.toJson(),
        'last_message': lastMessage?.toJson(),
        'is_pinned': isPinned,
        'unread_count': unreadCount,
        'last_read_inbox_message_id': lastReadInboxMessageId,
        'last_read_outbox_message_id': lastReadOutboxMessageId,
        'unread_mention_count': unreadMentionCount,
        'unread_reaction_count': unreadReactionCount,
        'notification_settings': notificationSettings.toJson(),
        'draft_message': draftMessage?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
