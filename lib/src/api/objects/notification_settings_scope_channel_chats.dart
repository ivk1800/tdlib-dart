import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Notification settings applied to all channel chats when the corresponding
/// chat setting has a default value
@immutable
class NotificationSettingsScopeChannelChats extends NotificationSettingsScope {
  const NotificationSettingsScopeChannelChats();

  static const String constructor = 'notificationSettingsScopeChannelChats';

  static NotificationSettingsScopeChannelChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationSettingsScopeChannelChats();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
