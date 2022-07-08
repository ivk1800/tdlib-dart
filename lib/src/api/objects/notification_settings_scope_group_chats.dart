import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Notification settings applied to all basic group and supergroup chats when
/// the corresponding chat setting has a default value
@immutable
class NotificationSettingsScopeGroupChats extends NotificationSettingsScope {
  const NotificationSettingsScopeGroupChats();

  static const String constructor = 'notificationSettingsScopeGroupChats';

  static NotificationSettingsScopeGroupChats? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationSettingsScopeGroupChats();
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
