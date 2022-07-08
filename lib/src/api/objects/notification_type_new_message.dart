import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// New message was received
@immutable
class NotificationTypeNewMessage extends NotificationType {
  const NotificationTypeNewMessage({
    required this.message,
    required this.showPreview,
  });

  /// [message] The message
  final Message message;

  /// [showPreview] True, if message content must be displayed in notifications
  final bool showPreview;

  static const String constructor = 'notificationTypeNewMessage';

  static NotificationTypeNewMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewMessage(
      message: Message.fromJson(json['message'])!,
      showPreview: json['show_preview'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        'show_preview': showPreview,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
