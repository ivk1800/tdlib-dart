import '../tdapi.dart';

/// A group containing notifications of type notificationTypeNewMessage and
/// notificationTypeNewPushMessage with ordinary unread messages
class NotificationGroupTypeMessages extends NotificationGroupType {
  const NotificationGroupTypeMessages();

  static const String CONSTRUCTOR = 'notificationGroupTypeMessages';

  static NotificationGroupTypeMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeMessages();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
