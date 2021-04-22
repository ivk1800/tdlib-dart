import '../tdapi.dart';

/// Contains active notifications that was shown on previous application
/// launches. This update is sent only if the message database is used. In
/// that case it comes once before any updateNotification and
/// updateNotificationGroup update
class UpdateActiveNotifications extends Update {
  UpdateActiveNotifications({required this.groups});

  /// [groups] Lists of active notification groups
  final List<NotificationGroup> groups;

  static const String CONSTRUCTOR = 'updateActiveNotifications';

  static UpdateActiveNotifications? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateActiveNotifications(
        groups: List<NotificationGroup>.from((json['groups'] ?? [])
            .map((item) => NotificationGroup.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'groups': groups.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
