import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
@immutable
class Chat extends TdObject {
  const Chat({
    required this.id,
    required this.type,
    required this.title,
    this.photo,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
    required this.profileAccentColorId,
    required this.profileBackgroundCustomEmojiId,
    required this.permissions,
    this.lastMessage,
    required this.positions,
    required this.chatLists,
    this.messageSenderId,
    this.blockList,
    required this.hasProtectedContent,
    required this.isTranslatable,
    required this.isMarkedAsUnread,
    required this.viewAsTopics,
    required this.hasScheduledMessages,
    required this.canBeDeletedOnlyForSelf,
    required this.canBeDeletedForAllUsers,
    required this.canBeReported,
    required this.defaultDisableNotification,
    required this.unreadCount,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.unreadReactionCount,
    required this.notificationSettings,
    required this.availableReactions,
    required this.messageAutoDeleteTime,
    this.emojiStatus,
    this.background,
    required this.themeName,
    this.actionBar,
    required this.videoChat,
    this.pendingJoinRequests,
    required this.replyMarkupMessageId,
    this.draftMessage,
    required this.clientData,
  });

  /// [id] Chat unique identifier
  final int id;

  /// [type] Type of the chat
  final ChatType type;

  /// [title] Chat title
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [accentColorId] Identifier of the accent color for message sender name,
  /// and backgrounds of chat photo, reply header, and link preview
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// reply header and link preview background for messages sent by the chat; 0
  /// if none
  final int backgroundCustomEmojiId;

  /// [profileAccentColorId] Identifier of the profile accent color for the
  /// chat's profile; -1 if none
  final int profileAccentColorId;

  /// [profileBackgroundCustomEmojiId] Identifier of a custom emoji to be shown
  /// on the background of the chat's profile; 0 if none
  final int profileBackgroundCustomEmojiId;

  /// [permissions] Actions that non-administrator chat members are allowed to
  /// take in the chat
  final ChatPermissions permissions;

  /// [lastMessage] Last message in the chat; may be null if none or unknown
  final Message? lastMessage;

  /// [positions] Positions of the chat in chat lists
  final List<ChatPosition> positions;

  /// [chatLists] Chat lists to which the chat belongs. A chat can have a
  /// non-zero position in a chat list even it doesn't belong to the chat list
  /// and have no position in a chat list even it belongs to the chat list
  final List<ChatList> chatLists;

  /// [messageSenderId] Identifier of a user or chat that is selected to send
  /// messages in the chat; may be null if the user can't change message sender
  final MessageSender? messageSenderId;

  /// [blockList] Block list to which the chat is added; may be null if none
  final BlockList? blockList;

  /// [hasProtectedContent] True, if chat content can't be saved locally,
  /// forwarded, or copied
  final bool hasProtectedContent;

  /// [isTranslatable] True, if translation of all messages in the chat must be
  /// suggested to the user
  final bool isTranslatable;

  /// [isMarkedAsUnread] True, if the chat is marked as unread
  final bool isMarkedAsUnread;

  /// [viewAsTopics] True, if the chat is a forum supergroup that must be shown
  /// in the "View as topics" mode, or Saved Messages chat that must be shown in
  /// the "View as chats"
  final bool viewAsTopics;

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

  /// [unreadReactionCount] Number of messages with unread reactions in the chat
  final int unreadReactionCount;

  /// [notificationSettings] Notification settings for the chat
  final ChatNotificationSettings notificationSettings;

  /// [availableReactions] Types of reaction, available in the chat
  final ChatAvailableReactions availableReactions;

  /// [messageAutoDeleteTime] Current message auto-delete or self-destruct timer
  /// setting for the chat, in seconds; 0 if disabled. Self-destruct timer in
  /// secret chats starts after the message or its content is viewed.
  /// Auto-delete timer in other chats starts from the send date
  final int messageAutoDeleteTime;

  /// [emojiStatus] Emoji status to be shown along with chat title; may be null
  final EmojiStatus? emojiStatus;

  /// [background] Background set for the chat; may be null if none
  final ChatBackground? background;

  /// [themeName] If non-empty, name of a theme, set for the chat
  final String themeName;

  /// [actionBar] Information about actions which must be possible to do through
  /// the chat action bar; may be null if none
  final ChatActionBar? actionBar;

  /// [videoChat] Information about video chat of the chat
  final VideoChat videoChat;

  /// [pendingJoinRequests] Information about pending join requests; may be null
  /// if none
  final ChatJoinRequestsInfo? pendingJoinRequests;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup
  /// needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  /// [draftMessage] A draft of a message in the chat; may be null if none
  final DraftMessage? draftMessage;

  /// [clientData] Application-specific data associated with the chat. (For
  /// example, the chat scroll position or local chat notification settings can
  /// be stored here.) Persistent if the message database is used
  final String clientData;

  static const String constructor = 'chat';

  static Chat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Chat(
      id: json['id'] as int,
      type: ChatType.fromJson(json['type'] as Map<String, dynamic>?)!,
      title: json['title'] as String,
      photo: ChatPhotoInfo.fromJson(json['photo'] as Map<String, dynamic>?),
      accentColorId: json['accent_color_id'] as int,
      backgroundCustomEmojiId:
          int.tryParse(json['background_custom_emoji_id']) ?? 0,
      profileAccentColorId: json['profile_accent_color_id'] as int,
      profileBackgroundCustomEmojiId:
          int.tryParse(json['profile_background_custom_emoji_id']) ?? 0,
      permissions: ChatPermissions.fromJson(
          json['permissions'] as Map<String, dynamic>?)!,
      lastMessage:
          Message.fromJson(json['last_message'] as Map<String, dynamic>?),
      positions: List<ChatPosition>.from(
          ((json['positions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatPosition.fromJson(item))
              .toList()),
      chatLists: List<ChatList>.from(
          ((json['chat_lists'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatList.fromJson(item))
              .toList()),
      messageSenderId: MessageSender.fromJson(
          json['message_sender_id'] as Map<String, dynamic>?),
      blockList:
          BlockList.fromJson(json['block_list'] as Map<String, dynamic>?),
      hasProtectedContent: json['has_protected_content'] as bool,
      isTranslatable: json['is_translatable'] as bool,
      isMarkedAsUnread: json['is_marked_as_unread'] as bool,
      viewAsTopics: json['view_as_topics'] as bool,
      hasScheduledMessages: json['has_scheduled_messages'] as bool,
      canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'] as bool,
      canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'] as bool,
      canBeReported: json['can_be_reported'] as bool,
      defaultDisableNotification: json['default_disable_notification'] as bool,
      unreadCount: json['unread_count'] as int,
      lastReadInboxMessageId: json['last_read_inbox_message_id'] as int,
      lastReadOutboxMessageId: json['last_read_outbox_message_id'] as int,
      unreadMentionCount: json['unread_mention_count'] as int,
      unreadReactionCount: json['unread_reaction_count'] as int,
      notificationSettings: ChatNotificationSettings.fromJson(
          json['notification_settings'] as Map<String, dynamic>?)!,
      availableReactions: ChatAvailableReactions.fromJson(
          json['available_reactions'] as Map<String, dynamic>?)!,
      messageAutoDeleteTime: json['message_auto_delete_time'] as int,
      emojiStatus:
          EmojiStatus.fromJson(json['emoji_status'] as Map<String, dynamic>?),
      background:
          ChatBackground.fromJson(json['background'] as Map<String, dynamic>?),
      themeName: json['theme_name'] as String,
      actionBar:
          ChatActionBar.fromJson(json['action_bar'] as Map<String, dynamic>?),
      videoChat:
          VideoChat.fromJson(json['video_chat'] as Map<String, dynamic>?)!,
      pendingJoinRequests: ChatJoinRequestsInfo.fromJson(
          json['pending_join_requests'] as Map<String, dynamic>?),
      replyMarkupMessageId: json['reply_markup_message_id'] as int,
      draftMessage:
          DraftMessage.fromJson(json['draft_message'] as Map<String, dynamic>?),
      clientData: json['client_data'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'type': type.toJson(),
        'title': title,
        'photo': photo?.toJson(),
        'accent_color_id': accentColorId,
        'background_custom_emoji_id': backgroundCustomEmojiId.toString(),
        'profile_accent_color_id': profileAccentColorId,
        'profile_background_custom_emoji_id':
            profileBackgroundCustomEmojiId.toString(),
        'permissions': permissions.toJson(),
        'last_message': lastMessage?.toJson(),
        'positions': positions.map((item) => item.toJson()).toList(),
        'chat_lists': chatLists.map((item) => item.toJson()).toList(),
        'message_sender_id': messageSenderId?.toJson(),
        'block_list': blockList?.toJson(),
        'has_protected_content': hasProtectedContent,
        'is_translatable': isTranslatable,
        'is_marked_as_unread': isMarkedAsUnread,
        'view_as_topics': viewAsTopics,
        'has_scheduled_messages': hasScheduledMessages,
        'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
        'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
        'can_be_reported': canBeReported,
        'default_disable_notification': defaultDisableNotification,
        'unread_count': unreadCount,
        'last_read_inbox_message_id': lastReadInboxMessageId,
        'last_read_outbox_message_id': lastReadOutboxMessageId,
        'unread_mention_count': unreadMentionCount,
        'unread_reaction_count': unreadReactionCount,
        'notification_settings': notificationSettings.toJson(),
        'available_reactions': availableReactions.toJson(),
        'message_auto_delete_time': messageAutoDeleteTime,
        'emoji_status': emojiStatus?.toJson(),
        'background': background?.toJson(),
        'theme_name': themeName,
        'action_bar': actionBar?.toJson(),
        'video_chat': videoChat.toJson(),
        'pending_join_requests': pendingJoinRequests?.toJson(),
        'reply_markup_message_id': replyMarkupMessageId,
        'draft_message': draftMessage?.toJson(),
        'client_data': clientData,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
