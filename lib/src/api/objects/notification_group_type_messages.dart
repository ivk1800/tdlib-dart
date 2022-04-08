import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A group containing notifications of type notificationTypeNewMessage and
/// notificationTypeNewPushMessage with ordinary unread messages
@immutable
class NotificationGroupTypeMessages extends NotificationGroupType {
  const NotificationGroupTypeMessages();

  static const String constructor = 'notificationGroupTypeMessages';

  static NotificationGroupTypeMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeMessages();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
