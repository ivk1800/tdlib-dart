import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A group containing a notification of type notificationTypeNewSecretChat
class NotificationGroupTypeSecretChat extends NotificationGroupType {
  const NotificationGroupTypeSecretChat();

  static const String CONSTRUCTOR = 'notificationGroupTypeSecretChat';

  static NotificationGroupTypeSecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeSecretChat();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
