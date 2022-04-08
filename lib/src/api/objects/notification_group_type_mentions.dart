import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A group containing notifications of type notificationTypeNewMessage and
/// notificationTypeNewPushMessage with unread mentions of the current user,
/// replies to their messages, or a pinned message
@immutable
class NotificationGroupTypeMentions extends NotificationGroupType {
  const NotificationGroupTypeMentions();

  static const String constructor = 'notificationGroupTypeMentions';

  static NotificationGroupTypeMentions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeMentions();
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
