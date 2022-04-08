import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a group of active notifications. Needs to be called only if the
/// notification group is removed by the current user
/// Returns [Ok]
@immutable
class RemoveNotificationGroup extends TdFunction {
  const RemoveNotificationGroup({
    required this.notificationGroupId,
    required this.maxNotificationId,
  });

  /// [notificationGroupId] Notification group identifier
  final int notificationGroupId;

  /// [maxNotificationId] The maximum identifier of removed notifications
  final int maxNotificationId;

  static const String constructor = 'removeNotificationGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_group_id': notificationGroupId,
        'max_notification_id': maxNotificationId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
