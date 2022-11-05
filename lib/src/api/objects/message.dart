import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a message
@immutable
class Message extends TdObject {
  const Message({
    required this.id,
    required this.senderId,
    required this.chatId,
    this.sendingState,
    this.schedulingState,
    required this.isOutgoing,
    required this.isPinned,
    required this.canBeEdited,
    required this.canBeForwarded,
    required this.canBeSaved,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canGetAddedReactions,
    required this.canGetStatistics,
    required this.canGetMessageThread,
    required this.canGetViewers,
    required this.canGetMediaTimestampLinks,
    required this.canReportReactions,
    required this.hasTimestampedMedia,
    required this.isChannelPost,
    required this.isTopicMessage,
    required this.containsUnreadMention,
    required this.date,
    required this.editDate,
    this.forwardInfo,
    this.interactionInfo,
    required this.unreadReactions,
    required this.replyInChatId,
    required this.replyToMessageId,
    required this.messageThreadId,
    required this.ttl,
    required this.ttlExpiresIn,
    required this.viaBotUserId,
    this.authorSignature,
    required this.mediaAlbumId,
    required this.restrictionReason,
    required this.content,
    this.replyMarkup,
  });

  /// [id] Message identifier; unique for the chat to which the message belongs
  final int id;

  /// [senderId] Identifier of the sender of the message
  final MessageSender senderId;

  /// [chatId] Chat identifier
  final int chatId;

  /// [sendingState] The sending state of the message; may be null
  final MessageSendingState? sendingState;

  /// [schedulingState] The scheduling state of the message; may be null
  final MessageSchedulingState? schedulingState;

  /// [isOutgoing] True, if the message is outgoing
  final bool isOutgoing;

  /// [isPinned] True, if the message is pinned
  final bool isPinned;

  /// [canBeEdited] True, if the message can be edited. For live location and
  /// poll messages this fields shows whether editMessageLiveLocation or
  /// stopPoll can be used with this message by the application
  final bool canBeEdited;

  /// [canBeForwarded] True, if the message can be forwarded
  final bool canBeForwarded;

  /// [canBeSaved] True, if content of the message can be saved locally or
  /// copied
  final bool canBeSaved;

  /// [canBeDeletedOnlyForSelf] True, if the message can be deleted only for the
  /// current user while other users will continue to see it
  final bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the message can be deleted for all
  /// users
  final bool canBeDeletedForAllUsers;

  /// [canGetAddedReactions] True, if the list of added reactions is available
  /// through getMessageAddedReactions
  final bool canGetAddedReactions;

  /// [canGetStatistics] True, if the message statistics are available through
  /// getMessageStatistics
  final bool canGetStatistics;

  /// [canGetMessageThread] True, if information about the message thread is
  /// available through getMessageThread and getMessageThreadHistory
  final bool canGetMessageThread;

  /// [canGetViewers] True, if chat members already viewed the message can be
  /// received through getMessageViewers
  final bool canGetViewers;

  /// [canGetMediaTimestampLinks] True, if media timestamp links can be
  /// generated for media timestamp entities in the message text, caption or web
  /// page description through getMessageLink
  final bool canGetMediaTimestampLinks;

  /// [canReportReactions] True, if reactions on the message can be reported
  /// through reportMessageReactions
  final bool canReportReactions;

  /// [hasTimestampedMedia] True, if media timestamp entities refers to a media
  /// in this message as opposed to a media in the replied message
  final bool hasTimestampedMedia;

  /// [isChannelPost] True, if the message is a channel post. All messages to
  /// channels are channel posts, all other messages are not channel posts
  final bool isChannelPost;

  /// [isTopicMessage] True, if the message is a forum topic message
  final bool isTopicMessage;

  /// [containsUnreadMention] True, if the message contains an unread mention
  /// for the current user
  final bool containsUnreadMention;

  /// [date] Point in time (Unix timestamp) when the message was sent
  final int date;

  /// [editDate] Point in time (Unix timestamp) when the message was last edited
  final int editDate;

  /// [forwardInfo] Information about the initial message sender; may be null
  final MessageForwardInfo? forwardInfo;

  /// [interactionInfo] Information about interactions with the message; may be
  /// null
  final MessageInteractionInfo? interactionInfo;

  /// [unreadReactions] Information about unread reactions added to the message
  final List<UnreadReaction> unreadReactions;

  /// [replyInChatId] If non-zero, the identifier of the chat to which the
  /// replied message belongs; Currently, only messages in the Replies chat can
  /// have different reply_in_chat_id and chat_id
  final int replyInChatId;

  /// [replyToMessageId] If non-zero, the identifier of the message this message
  /// is replying to; can be the identifier of a deleted message
  final int replyToMessageId;

  /// [messageThreadId] If non-zero, the identifier of the message thread the
  /// message belongs to; unique within the chat to which the message belongs
  final int messageThreadId;

  /// [ttl] For self-destructing messages, the message's TTL (Time To Live), in
  /// seconds; 0 if none. TDLib will send updateDeleteMessages or
  /// updateMessageContent once the TTL expires
  final int ttl;

  /// [ttlExpiresIn] Time left before the message expires, in seconds. If the
  /// TTL timer isn't started yet, equals to the value of the ttl field
  final double ttlExpiresIn;

  /// [viaBotUserId] If non-zero, the user identifier of the bot through which
  /// this message was sent
  final int viaBotUserId;

  /// [authorSignature] For channel posts and anonymous group messages, optional
  /// author signature
  final String? authorSignature;

  /// [mediaAlbumId] Unique identifier of an album this message belongs to. Only
  /// audios, documents, photos and videos can be grouped together in albums
  final int mediaAlbumId;

  /// [restrictionReason] If non-empty, contains a human-readable description of
  /// the reason why access to this message must be restricted
  final String restrictionReason;

  /// [content] Content of the message
  final MessageContent content;

  /// [replyMarkup] Reply markup for the message; may be null
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'message';

  static Message? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Message(
      id: json['id'],
      senderId: MessageSender.fromJson(json['sender_id'])!,
      chatId: json['chat_id'],
      sendingState: MessageSendingState.fromJson(json['sending_state']),
      schedulingState:
          MessageSchedulingState.fromJson(json['scheduling_state']),
      isOutgoing: json['is_outgoing'],
      isPinned: json['is_pinned'],
      canBeEdited: json['can_be_edited'],
      canBeForwarded: json['can_be_forwarded'],
      canBeSaved: json['can_be_saved'],
      canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
      canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
      canGetAddedReactions: json['can_get_added_reactions'],
      canGetStatistics: json['can_get_statistics'],
      canGetMessageThread: json['can_get_message_thread'],
      canGetViewers: json['can_get_viewers'],
      canGetMediaTimestampLinks: json['can_get_media_timestamp_links'],
      canReportReactions: json['can_report_reactions'],
      hasTimestampedMedia: json['has_timestamped_media'],
      isChannelPost: json['is_channel_post'],
      isTopicMessage: json['is_topic_message'],
      containsUnreadMention: json['contains_unread_mention'],
      date: json['date'],
      editDate: json['edit_date'],
      forwardInfo: MessageForwardInfo.fromJson(json['forward_info']),
      interactionInfo:
          MessageInteractionInfo.fromJson(json['interaction_info']),
      unreadReactions: List<UnreadReaction>.from(
          (json['unread_reactions'] ?? [])
              .map((item) => UnreadReaction.fromJson(item))
              .toList()),
      replyInChatId: json['reply_in_chat_id'],
      replyToMessageId: json['reply_to_message_id'],
      messageThreadId: json['message_thread_id'],
      ttl: json['ttl'],
      ttlExpiresIn: json['ttl_expires_in'],
      viaBotUserId: json['via_bot_user_id'],
      authorSignature: json['author_signature'],
      mediaAlbumId: int.tryParse(json['media_album_id']) ?? 0,
      restrictionReason: json['restriction_reason'],
      content: MessageContent.fromJson(json['content'])!,
      replyMarkup: ReplyMarkup.fromJson(json['reply_markup']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'sender_id': senderId.toJson(),
        'chat_id': chatId,
        'sending_state': sendingState?.toJson(),
        'scheduling_state': schedulingState?.toJson(),
        'is_outgoing': isOutgoing,
        'is_pinned': isPinned,
        'can_be_edited': canBeEdited,
        'can_be_forwarded': canBeForwarded,
        'can_be_saved': canBeSaved,
        'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
        'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
        'can_get_added_reactions': canGetAddedReactions,
        'can_get_statistics': canGetStatistics,
        'can_get_message_thread': canGetMessageThread,
        'can_get_viewers': canGetViewers,
        'can_get_media_timestamp_links': canGetMediaTimestampLinks,
        'can_report_reactions': canReportReactions,
        'has_timestamped_media': hasTimestampedMedia,
        'is_channel_post': isChannelPost,
        'is_topic_message': isTopicMessage,
        'contains_unread_mention': containsUnreadMention,
        'date': date,
        'edit_date': editDate,
        'forward_info': forwardInfo?.toJson(),
        'interaction_info': interactionInfo?.toJson(),
        'unread_reactions':
            unreadReactions.map((item) => item.toJson()).toList(),
        'reply_in_chat_id': replyInChatId,
        'reply_to_message_id': replyToMessageId,
        'message_thread_id': messageThreadId,
        'ttl': ttl,
        'ttl_expires_in': ttlExpiresIn,
        'via_bot_user_id': viaBotUserId,
        'author_signature': authorSignature,
        'media_album_id': mediaAlbumId,
        'restriction_reason': restrictionReason,
        'content': content.toJson(),
        'reply_markup': replyMarkup?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
