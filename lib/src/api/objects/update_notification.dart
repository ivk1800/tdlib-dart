import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A notification was changed
@immutable
class UpdateNotification extends Update {
  const UpdateNotification({
    required this.notificationGroupId,
    required this.notification,
  });

  /// [notificationGroupId] Unique notification group identifier
  final int notificationGroupId;

  /// [notification]_group_id Unique notification group identifier
  final Notification notification;

  static const String constructor = 'updateNotification';

  static UpdateNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNotification(
      notificationGroupId: json['notification_group_id'],
      notification: Notification.fromJson(json['notification'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_group_id': notificationGroupId,
        'notification': notification.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
