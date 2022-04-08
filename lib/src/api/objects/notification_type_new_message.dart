import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// New message was received
@immutable
class NotificationTypeNewMessage extends NotificationType {
  const NotificationTypeNewMessage({
    required this.message,
  });

  /// [message] The message
  final Message message;

  static const String constructor = 'notificationTypeNewMessage';

  static NotificationTypeNewMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewMessage(
      message: Message.fromJson(json['message'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
