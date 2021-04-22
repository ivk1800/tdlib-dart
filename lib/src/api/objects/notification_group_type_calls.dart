import '../tdapi.dart';

/// A group containing notifications of type notificationTypeNewCall
class NotificationGroupTypeCalls extends NotificationGroupType {
  const NotificationGroupTypeCalls();

  static const String CONSTRUCTOR = 'notificationGroupTypeCalls';

  static NotificationGroupTypeCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeCalls();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
