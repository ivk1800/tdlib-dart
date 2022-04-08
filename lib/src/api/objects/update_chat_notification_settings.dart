import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Notification settings for a chat were changed
@immutable
class UpdateChatNotificationSettings extends Update {
  const UpdateChatNotificationSettings({
    required this.chatId,
    required this.notificationSettings,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [notificationSettings] The new notification settings
  final ChatNotificationSettings notificationSettings;

  static const String constructor = 'updateChatNotificationSettings';

  static UpdateChatNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatNotificationSettings(
      chatId: json['chat_id'],
      notificationSettings:
          ChatNotificationSettings.fromJson(json['notification_settings'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'notification_settings': notificationSettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
