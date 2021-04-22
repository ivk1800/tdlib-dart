import '../tdapi.dart';

/// Notification settings applied to all channels when the corresponding chat
/// setting has a default value
class NotificationSettingsScopeChannelChats extends NotificationSettingsScope {
  const NotificationSettingsScopeChannelChats();

  static const String CONSTRUCTOR = 'notificationSettingsScopeChannelChats';

  static NotificationSettingsScopeChannelChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationSettingsScopeChannelChats();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
