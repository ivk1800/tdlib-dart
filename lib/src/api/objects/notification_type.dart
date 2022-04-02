import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains detailed information about a notification
abstract class NotificationType extends TdObject {
  const NotificationType();

  static const String CONSTRUCTOR = 'notificationType';

  /// Inherited by:
  /// [NotificationTypeNewMessage]
  /// [NotificationTypeNewSecretChat]
  /// [NotificationTypeNewCall]
  /// [NotificationTypeNewPushMessage]
  static NotificationType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case NotificationTypeNewMessage.CONSTRUCTOR:
        return NotificationTypeNewMessage.fromJson(json);
      case NotificationTypeNewSecretChat.CONSTRUCTOR:
        return NotificationTypeNewSecretChat.fromJson(json);
      case NotificationTypeNewCall.CONSTRUCTOR:
        return NotificationTypeNewCall.fromJson(json);
      case NotificationTypeNewPushMessage.CONSTRUCTOR:
        return NotificationTypeNewPushMessage.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
