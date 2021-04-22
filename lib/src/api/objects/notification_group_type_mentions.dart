import '../tdapi.dart';

/// A group containing notifications of type notificationTypeNewMessage and
/// notificationTypeNewPushMessage with unread mentions of the current user,
/// replies to their messages, or a pinned message
class NotificationGroupTypeMentions extends NotificationGroupType {
  const NotificationGroupTypeMentions();

  static const String CONSTRUCTOR = 'notificationGroupTypeMentions';

  static NotificationGroupTypeMentions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeMentions();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
