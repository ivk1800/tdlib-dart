import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a message
class Message extends TdObject {
  Message(
      {required this.id,
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
      required this.canGetStatistics,
      required this.canGetMessageThread,
      required this.canGetViewers,
      required this.canGetMediaTimestampLinks,
      required this.hasTimestampedMedia,
      required this.isChannelPost,
      required this.containsUnreadMention,
      required this.date,
      required this.editDate,
      this.forwardInfo,
      this.interactionInfo,
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
      this.replyMarkup});

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

  /// [canGetStatistics] True, if the message statistics are available
  final bool canGetStatistics;

  /// [canGetMessageThread] True, if the message thread info is available
  final bool canGetMessageThread;

  /// [canGetViewers] True, if chat members already viewed the message can be
  /// received through getMessageViewers
  final bool canGetViewers;

  /// [canGetMediaTimestampLinks] True, if media timestamp links can be
  /// generated for media timestamp entities in the message text, caption or web
  /// page description
  final bool canGetMediaTimestampLinks;

  /// [hasTimestampedMedia] True, if media timestamp entities refers to a media
  /// in this message as opposed to a media in the replied message
  final bool hasTimestampedMedia;

  /// [isChannelPost] True, if the message is a channel post. All messages to
  /// channels are channel posts, all other messages are not channel posts
  final bool isChannelPost;

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

  static const String CONSTRUCTOR = 'message';

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
        canGetStatistics: json['can_get_statistics'],
        canGetMessageThread: json['can_get_message_thread'],
        canGetViewers: json['can_get_viewers'],
        canGetMediaTimestampLinks: json['can_get_media_timestamp_links'],
        hasTimestampedMedia: json['has_timestamped_media'],
        isChannelPost: json['is_channel_post'],
        containsUnreadMention: json['contains_unread_mention'],
        date: json['date'],
        editDate: json['edit_date'],
        forwardInfo: MessageForwardInfo.fromJson(json['forward_info']),
        interactionInfo:
            MessageInteractionInfo.fromJson(json['interaction_info']),
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
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'sender_id': this.senderId.toJson(),
        'chat_id': this.chatId,
        'sending_state': this.sendingState?.toJson(),
        'scheduling_state': this.schedulingState?.toJson(),
        'is_outgoing': this.isOutgoing,
        'is_pinned': this.isPinned,
        'can_be_edited': this.canBeEdited,
        'can_be_forwarded': this.canBeForwarded,
        'can_be_saved': this.canBeSaved,
        'can_be_deleted_only_for_self': this.canBeDeletedOnlyForSelf,
        'can_be_deleted_for_all_users': this.canBeDeletedForAllUsers,
        'can_get_statistics': this.canGetStatistics,
        'can_get_message_thread': this.canGetMessageThread,
        'can_get_viewers': this.canGetViewers,
        'can_get_media_timestamp_links': this.canGetMediaTimestampLinks,
        'has_timestamped_media': this.hasTimestampedMedia,
        'is_channel_post': this.isChannelPost,
        'contains_unread_mention': this.containsUnreadMention,
        'date': this.date,
        'edit_date': this.editDate,
        'forward_info': this.forwardInfo?.toJson(),
        'interaction_info': this.interactionInfo?.toJson(),
        'reply_in_chat_id': this.replyInChatId,
        'reply_to_message_id': this.replyToMessageId,
        'message_thread_id': this.messageThreadId,
        'ttl': this.ttl,
        'ttl_expires_in': this.ttlExpiresIn,
        'via_bot_user_id': this.viaBotUserId,
        'author_signature': this.authorSignature,
        'media_album_id': this.mediaAlbumId,
        'restriction_reason': this.restrictionReason,
        'content': this.content.toJson(),
        'reply_markup': this.replyMarkup?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
