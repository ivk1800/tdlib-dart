import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes notification settings for chats of a given type
/// Returns [Ok]
@immutable
class SetScopeNotificationSettings extends TdFunction {
  const SetScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
  });

  /// [scope] Types of chats for which to change the notification settings
  final NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings for the given scope
  final ScopeNotificationSettings notificationSettings;

  static const String constructor = 'setScopeNotificationSettings';

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
