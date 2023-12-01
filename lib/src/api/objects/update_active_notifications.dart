import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains active notifications that were shown on previous application
/// launches. This update is sent only if the message database is used. In
/// that case it comes once before any updateNotification and
/// updateNotificationGroup update
@immutable
class UpdateActiveNotifications extends Update {
  const UpdateActiveNotifications({
    required this.groups,
  });

  /// [groups] Lists of active notification groups
  final List<NotificationGroup> groups;

  static const String constructor = 'updateActiveNotifications';

  static UpdateActiveNotifications? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateActiveNotifications(
      groups: List<NotificationGroup>.from(
          ((json['groups'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => NotificationGroup.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'groups': groups.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
