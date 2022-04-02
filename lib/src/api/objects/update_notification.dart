import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A notification was changed
class UpdateNotification extends Update {
  UpdateNotification(
      {required this.notificationGroupId, required this.notification});

  /// [notificationGroupId] Unique notification group identifier
  final int notificationGroupId;

  /// [notification]_group_id Unique notification group identifier
  final Notification notification;

  static const String CONSTRUCTOR = 'updateNotification';

  static UpdateNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNotification(
        notificationGroupId: json['notification_group_id'],
        notification: Notification.fromJson(json['notification'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'notification_group_id': this.notificationGroupId,
        'notification': this.notification.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
