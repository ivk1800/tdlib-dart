import '../tdapi.dart';

/// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
class Chat extends TdObject {
  Chat(
      {required this.id,
      required this.type,
      required this.title,
      this.photo,
      required this.permissions,
      this.lastMessage,
      required this.positions,
      required this.isMarkedAsUnread,
      required this.isBlocked,
      required this.hasScheduledMessages,
      required this.canBeDeletedOnlyForSelf,
      required this.canBeDeletedForAllUsers,
      required this.canBeReported,
      required this.defaultDisableNotification,
      required this.unreadCount,
      required this.lastReadInboxMessageId,
      required this.lastReadOutboxMessageId,
      required this.unreadMentionCount,
      required this.notificationSettings,
      required this.messageTtlSetting,
      this.actionBar,
      required this.voiceChat,
      required this.replyMarkupMessageId,
      this.draftMessage,
      required this.clientData});

  /// [id] Chat unique identifier
  final int id;

  /// [type] Type of the chat
  final ChatType type;

  /// [title] Chat title
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [permissions] Actions that non-administrator chat members are allowed to
  /// take in the chat
  final ChatPermissions permissions;

  /// [lastMessage] Last message in the chat; may be null
  final Message? lastMessage;

  /// [positions] Positions of the chat in chat lists
  final List<ChatPosition> positions;

  /// [isMarkedAsUnread] True, if the chat is marked as unread
  final bool isMarkedAsUnread;

  /// [isBlocked] True, if the chat is blocked by the current user and private
  /// messages from the chat can't be received
  final bool isBlocked;

  /// [hasScheduledMessages] True, if the chat has scheduled messages
  final bool hasScheduledMessages;

  /// [canBeDeletedOnlyForSelf] True, if the chat messages can be deleted only
  /// for the current user while other users will continue to see the messages
  final bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the chat messages can be deleted for
  /// all users
  final bool canBeDeletedForAllUsers;

  /// [canBeReported] True, if the chat can be reported to Telegram moderators
  /// through reportChat or reportChatPhoto
  final bool canBeReported;

  /// [defaultDisableNotification] Default value of the disable_notification
  /// parameter, used when a message is sent to the chat
  final bool defaultDisableNotification;

  /// [unreadCount] Number of unread messages in the chat
  final int unreadCount;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the
  /// chat
  final int unreadMentionCount;

  /// [notificationSettings] Notification settings for this chat
  final ChatNotificationSettings notificationSettings;

  /// [messageTtlSetting] Current message Time To Live setting (self-destruct
  /// timer) for the chat; 0 if not defined. TTL is counted from the time
  /// message or its content is viewed in secret chats and from the send date in
  /// other chats
  final int messageTtlSetting;

  /// [actionBar] Describes actions which should be possible to do through a
  /// chat action bar; may be null
  final ChatActionBar? actionBar;

  /// [voiceChat] Contains information about voice chat of the chat
  final VoiceChat voiceChat;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup
  /// needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  /// [draftMessage] A draft of a message in the chat; may be null
  final DraftMessage? draftMessage;

  /// [clientData] Contains application-specific data associated with the chat.
  /// (For example, the chat scroll position or local chat notification settings
  /// can be stored here.) Persistent if the message database is used
  final String clientData;

  static const String CONSTRUCTOR = 'chat';

  static Chat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Chat(
        id: json['id'],
        type: ChatType.fromJson(json['type'])!,
        title: json['title'],
        photo: ChatPhotoInfo.fromJson(json['photo']),
        permissions: ChatPermissions.fromJson(json['permissions'])!,
        lastMessage: Message.fromJson(json['last_message']),
        positions: List<ChatPosition>.from((json['positions'] ?? [])
            .map((item) => ChatPosition.fromJson(item))
            .toList()),
        isMarkedAsUnread: json['is_marked_as_unread'],
        isBlocked: json['is_blocked'],
        hasScheduledMessages: json['has_scheduled_messages'],
        canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
        canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
        canBeReported: json['can_be_reported'],
        defaultDisableNotification: json['default_disable_notification'],
        unreadCount: json['unread_count'],
        lastReadInboxMessageId: json['last_read_inbox_message_id'],
        lastReadOutboxMessageId: json['last_read_outbox_message_id'],
        unreadMentionCount: json['unread_mention_count'],
        notificationSettings:
            ChatNotificationSettings.fromJson(json['notification_settings'])!,
        messageTtlSetting: json['message_ttl_setting'],
        actionBar: ChatActionBar.fromJson(json['action_bar']),
        voiceChat: VoiceChat.fromJson(json['voice_chat'])!,
        replyMarkupMessageId: json['reply_markup_message_id'],
        draftMessage: DraftMessage.fromJson(json['draft_message']),
        clientData: json['client_data']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'type': this.type.toJson(),
        'title': this.title,
        'photo': this.photo?.toJson(),
        'permissions': this.permissions.toJson(),
        'last_message': this.lastMessage?.toJson(),
        'positions': positions.map((item) => item.toJson()).toList(),
        'is_marked_as_unread': this.isMarkedAsUnread,
        'is_blocked': this.isBlocked,
        'has_scheduled_messages': this.hasScheduledMessages,
        'can_be_deleted_only_for_self': this.canBeDeletedOnlyForSelf,
        'can_be_deleted_for_all_users': this.canBeDeletedForAllUsers,
        'can_be_reported': this.canBeReported,
        'default_disable_notification': this.defaultDisableNotification,
        'unread_count': this.unreadCount,
        'last_read_inbox_message_id': this.lastReadInboxMessageId,
        'last_read_outbox_message_id': this.lastReadOutboxMessageId,
        'unread_mention_count': this.unreadMentionCount,
        'notification_settings': this.notificationSettings.toJson(),
        'message_ttl_setting': this.messageTtlSetting,
        'action_bar': this.actionBar?.toJson(),
        'voice_chat': this.voiceChat.toJson(),
        'reply_markup_message_id': this.replyMarkupMessageId,
        'draft_message': this.draftMessage?.toJson(),
        'client_data': this.clientData,
        '@type': CONSTRUCTOR
      };
}
