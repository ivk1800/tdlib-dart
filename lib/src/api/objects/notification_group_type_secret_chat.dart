import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A group containing a notification of type notificationTypeNewSecretChat
@immutable
class NotificationGroupTypeSecretChat extends NotificationGroupType {
  const NotificationGroupTypeSecretChat();

  static const String constructor = 'notificationGroupTypeSecretChat';

  static NotificationGroupTypeSecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeSecretChat();
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
