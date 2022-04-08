import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes an active notification from notification list. Needs to be called
/// only if the notification is removed by the current user
/// Returns [Ok]
@immutable
class RemoveNotification extends TdFunction {
  const RemoveNotification({
    required this.notificationGroupId,
    required this.notificationId,
  });

  /// [notificationGroupId] Identifier of notification group to which the
  /// notification belongs
  final int notificationGroupId;

  /// [notificationId] Identifier of removed notification
  final int notificationId;

  static const String constructor = 'removeNotification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_group_id': notificationGroupId,
        'notification_id': notificationId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
