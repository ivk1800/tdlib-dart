import '../tdapi.dart';

/// A list of active notifications in a notification group has changed
class UpdateNotificationGroup extends Update {
  UpdateNotificationGroup(
      {required this.notificationGroupId,
      required this.type,
      required this.chatId,
      required this.notificationSettingsChatId,
      required this.isSilent,
      required this.totalCount,
      required this.addedNotifications,
      required this.removedNotificationIds});

  /// [notificationGroupId] Unique notification group identifier
  final int notificationGroupId;

  /// [type] New type of the notification group
  final NotificationGroupType type;

  /// [chatId] Identifier of a chat to which all notifications in the group
  /// belong
  final int chatId;

  /// [notificationSettingsChatId] Chat identifier, which notification settings
  /// must be applied to the added notifications
  final int notificationSettingsChatId;

  /// [isSilent] True, if the notifications must be shown without sound
  final bool isSilent;

  /// [totalCount] Total number of unread notifications in the group, can be
  /// bigger than number of active notifications
  final int totalCount;

  /// [addedNotifications] List of added group notifications, sorted by
  /// notification ID
  final List<Notification> addedNotifications;

  /// [removedNotificationIds] Identifiers of removed group notifications,
  /// sorted by notification ID
  final List<int> removedNotificationIds;

  static const String CONSTRUCTOR = 'updateNotificationGroup';

  static UpdateNotificationGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNotificationGroup(
        notificationGroupId: json['notification_group_id'],
        type: NotificationGroupType.fromJson(json['type'])!,
        chatId: json['chat_id'],
        notificationSettingsChatId: json['notification_settings_chat_id'],
        isSilent: json['is_silent'],
        totalCount: json['total_count'],
        addedNotifications: List<Notification>.from(
            (json['added_notifications'] ?? [])
                .map((item) => Notification.fromJson(item))
                .toList()),
        removedNotificationIds: List<int>.from(
            (json['removed_notification_ids'] ?? [])
                .map((item) => item)
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'notification_group_id': this.notificationGroupId,
        'type': this.type.toJson(),
        'chat_id': this.chatId,
        'notification_settings_chat_id': this.notificationSettingsChatId,
        'is_silent': this.isSilent,
        'total_count': this.totalCount,
        'added_notifications':
            addedNotifications.map((item) => item.toJson()).toList(),
        'removed_notification_ids':
            removedNotificationIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };
}
