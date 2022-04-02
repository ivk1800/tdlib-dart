import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Removes an active notification from notification list. Needs to be called
/// only if the notification is removed by the current user
/// Returns [Ok]
class RemoveNotification extends TdFunction {
  RemoveNotification(
      {required this.notificationGroupId, required this.notificationId});

  /// [notificationGroupId] Identifier of notification group to which the
  /// notification belongs
  final int notificationGroupId;

  /// [notificationId] Identifier of removed notification
  final int notificationId;

  static const String CONSTRUCTOR = 'removeNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'notification_group_id': this.notificationGroupId,
        'notification_id': this.notificationId,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
