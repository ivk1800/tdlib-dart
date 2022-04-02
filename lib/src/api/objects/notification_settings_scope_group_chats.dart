import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Notification settings applied to all basic groups and supergroups when the
/// corresponding chat setting has a default value
class NotificationSettingsScopeGroupChats extends NotificationSettingsScope {
  const NotificationSettingsScopeGroupChats();

  static const String CONSTRUCTOR = 'notificationSettingsScopeGroupChats';

  static NotificationSettingsScopeGroupChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationSettingsScopeGroupChats();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
