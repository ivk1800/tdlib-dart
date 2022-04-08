import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Notification settings for some type of chats were updated
@immutable
class UpdateScopeNotificationSettings extends Update {
  const UpdateScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
  });

  /// [scope] Types of chats for which notification settings were updated
  final NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings
  final ScopeNotificationSettings notificationSettings;

  static const String constructor = 'updateScopeNotificationSettings';

  static UpdateScopeNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateScopeNotificationSettings(
      scope: NotificationSettingsScope.fromJson(json['scope'])!,
      notificationSettings:
          ScopeNotificationSettings.fromJson(json['notification_settings'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'scope': scope.toJson(),
        'notification_settings': notificationSettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
