import '../tdapi.dart';

/// Notification settings applied to all private and secret chats when the
/// corresponding chat setting has a default value
class NotificationSettingsScopePrivateChats extends NotificationSettingsScope {
  const NotificationSettingsScopePrivateChats();

  static const String CONSTRUCTOR = 'notificationSettingsScopePrivateChats';

  static NotificationSettingsScopePrivateChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationSettingsScopePrivateChats();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
