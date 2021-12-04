import '../tdapi.dart';

/// Describes the types of chats to which notification settings are relevant
abstract class NotificationSettingsScope extends TdObject {
  const NotificationSettingsScope();

  static const String CONSTRUCTOR = 'notificationSettingsScope';

  /// Inherited by:
  /// [NotificationSettingsScopePrivateChats]
  /// [NotificationSettingsScopeGroupChats]
  /// [NotificationSettingsScopeChannelChats]
  static NotificationSettingsScope? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case NotificationSettingsScopePrivateChats.CONSTRUCTOR:
        return NotificationSettingsScopePrivateChats.fromJson(json);
      case NotificationSettingsScopeGroupChats.CONSTRUCTOR:
        return NotificationSettingsScopeGroupChats.fromJson(json);
      case NotificationSettingsScopeChannelChats.CONSTRUCTOR:
        return NotificationSettingsScopeChannelChats.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
