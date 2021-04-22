import '../tdapi.dart';

/// New secret chat was created
class NotificationTypeNewSecretChat extends NotificationType {
  const NotificationTypeNewSecretChat();

  static const String CONSTRUCTOR = 'notificationTypeNewSecretChat';

  static NotificationTypeNewSecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationTypeNewSecretChat();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
