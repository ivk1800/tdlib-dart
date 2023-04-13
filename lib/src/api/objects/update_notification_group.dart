import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A list of active notifications in a notification group has changed
@immutable
class UpdateNotificationGroup extends Update {
  const UpdateNotificationGroup({
    required this.notificationGroupId,
    required this.type,
    required this.chatId,
    required this.notificationSettingsChatId,
    required this.notificationSoundId,
    required this.totalCount,
    required this.addedNotifications,
    required this.removedNotificationIds,
  });

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

  /// [notificationSoundId] Identifier of the notification sound to be played; 0
  /// if sound is disabled
  final int notificationSoundId;

  /// [totalCount] Total number of unread notifications in the group, can be
  /// bigger than number of active notifications
  final int totalCount;

  /// [addedNotifications] List of added group notifications, sorted by
  /// notification ID
  final List<Notification> addedNotifications;

  /// [removedNotificationIds] Identifiers of removed group notifications,
  /// sorted by notification ID
  final List<int> removedNotificationIds;

  static const String constructor = 'updateNotificationGroup';

  static UpdateNotificationGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNotificationGroup(
      notificationGroupId: json['notification_group_id'] as int,
      type: NotificationGroupType.fromJson(
          json['type'] as Map<String, dynamic>?)!,
      chatId: json['chat_id'] as int,
      notificationSettingsChatId: json['notification_settings_chat_id'] as int,
      notificationSoundId: int.tryParse(json['notification_sound_id']) ?? 0,
      totalCount: json['total_count'] as int,
      addedNotifications: List<Notification>.from(
          ((json['added_notifications'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Notification.fromJson(item))
              .toList()),
      removedNotificationIds: List<int>.from(
          ((json['removed_notification_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_group_id': notificationGroupId,
        'type': type.toJson(),
        'chat_id': chatId,
        'notification_settings_chat_id': notificationSettingsChatId,
        'notification_sound_id': notificationSoundId.toString(),
        'total_count': totalCount,
        'added_notifications':
            addedNotifications.map((item) => item.toJson()).toList(),
        'removed_notification_ids':
            removedNotificationIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
