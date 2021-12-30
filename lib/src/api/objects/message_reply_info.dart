import '../tdapi.dart';

/// Contains information about replies to a message
class MessageReplyInfo extends TdObject {
  MessageReplyInfo(
      {required this.replyCount,
      required this.recentReplierIds,
      required this.lastReadInboxMessageId,
      required this.lastReadOutboxMessageId,
      required this.lastMessageId});

  /// [replyCount] Number of times the message was directly or indirectly
  /// replied
  final int replyCount;

  /// [recentReplierIds] Identifiers of at most 3 recent repliers to the
  /// message; available in channels with a discussion supergroup. The users and
  /// chats are expected to be inaccessible: only their photo and name will be
  /// available
  final List<MessageSender> recentReplierIds;

  /// [lastReadInboxMessageId] Identifier of the last read incoming reply to the
  /// message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing reply to
  /// the message
  final int lastReadOutboxMessageId;

  /// [lastMessageId] Identifier of the last reply to the message
  final int lastMessageId;

  static const String CONSTRUCTOR = 'messageReplyInfo';

  static MessageReplyInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReplyInfo(
        replyCount: json['reply_count'],
        recentReplierIds: List<MessageSender>.from(
            (json['recent_replier_ids'] ?? [])
                .map((item) => MessageSender.fromJson(item))
                .toList()),
        lastReadInboxMessageId: json['last_read_inbox_message_id'],
        lastReadOutboxMessageId: json['last_read_outbox_message_id'],
        lastMessageId: json['last_message_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'reply_count': this.replyCount,
        'recent_replier_ids':
            recentReplierIds.map((item) => item.toJson()).toList(),
        'last_read_inbox_message_id': this.lastReadInboxMessageId,
        'last_read_outbox_message_id': this.lastReadOutboxMessageId,
        'last_message_id': this.lastMessageId,
        '@type': CONSTRUCTOR
      };
}
