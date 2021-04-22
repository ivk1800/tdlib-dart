import '../tdapi.dart';

/// Returns the notification settings for chats of a given type
/// Returns [ScopeNotificationSettings]
class GetScopeNotificationSettings extends TdFunction {
  GetScopeNotificationSettings({required this.scope});

  /// [scope] Types of chats for which to return the notification settings
  /// information
  final NotificationSettingsScope scope;

  static const String CONSTRUCTOR = 'getScopeNotificationSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'scope': this.scope.toJson(), '@type': CONSTRUCTOR};
}
