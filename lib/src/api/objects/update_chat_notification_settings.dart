import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Notification settings for a chat were changed
class UpdateChatNotificationSettings extends Update {
  UpdateChatNotificationSettings(
      {required this.chatId, required this.notificationSettings});

  /// [chatId] Chat identifier
  final int chatId;

  /// [notificationSettings] The new notification settings
  final ChatNotificationSettings notificationSettings;

  static const String CONSTRUCTOR = 'updateChatNotificationSettings';

  static UpdateChatNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatNotificationSettings(
        chatId: json['chat_id'],
        notificationSettings:
            ChatNotificationSettings.fromJson(json['notification_settings'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'notification_settings': this.notificationSettings.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
