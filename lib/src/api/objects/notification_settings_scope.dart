import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the types of chats to which notification settings are relevant
@immutable
abstract class NotificationSettingsScope extends TdObject {
  const NotificationSettingsScope();

  static const String constructor = 'notificationSettingsScope';

  /// Inherited by:
  /// [NotificationSettingsScopePrivateChats]
  /// [NotificationSettingsScopeGroupChats]
  /// [NotificationSettingsScopeChannelChats]
  static NotificationSettingsScope? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case NotificationSettingsScopePrivateChats.constructor:
        return NotificationSettingsScopePrivateChats.fromJson(json);
      case NotificationSettingsScopeGroupChats.constructor:
        return NotificationSettingsScopeGroupChats.fromJson(json);
      case NotificationSettingsScopeChannelChats.constructor:
        return NotificationSettingsScopeChannelChats.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
