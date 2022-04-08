import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// New secret chat was created
@immutable
class NotificationTypeNewSecretChat extends NotificationType {
  const NotificationTypeNewSecretChat();

  static const String constructor = 'notificationTypeNewSecretChat';

  static NotificationTypeNewSecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationTypeNewSecretChat();
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
