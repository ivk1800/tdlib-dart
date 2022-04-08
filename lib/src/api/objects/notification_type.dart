import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains detailed information about a notification
@immutable
abstract class NotificationType extends TdObject {
  const NotificationType();

  static const String constructor = 'notificationType';

  /// Inherited by:
  /// [NotificationTypeNewMessage]
  /// [NotificationTypeNewSecretChat]
  /// [NotificationTypeNewCall]
  /// [NotificationTypeNewPushMessage]
  static NotificationType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case NotificationTypeNewMessage.constructor:
        return NotificationTypeNewMessage.fromJson(json);
      case NotificationTypeNewSecretChat.constructor:
        return NotificationTypeNewSecretChat.fromJson(json);
      case NotificationTypeNewCall.constructor:
        return NotificationTypeNewCall.fromJson(json);
      case NotificationTypeNewPushMessage.constructor:
        return NotificationTypeNewPushMessage.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
