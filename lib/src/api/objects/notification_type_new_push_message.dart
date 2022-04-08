import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// New message was received through a push notification
@immutable
class NotificationTypeNewPushMessage extends NotificationType {
  const NotificationTypeNewPushMessage({
    required this.messageId,
    required this.senderId,
    required this.senderName,
    required this.isOutgoing,
    required this.content,
  });

  /// [messageId] The message identifier. The message will not be available in
  /// the chat history, but the ID can be used in viewMessages, or as
  /// reply_to_message_id
  final int messageId;

  /// [senderId] Identifier of the sender of the message. Corresponding user or
  /// chat may be inaccessible
  final MessageSender senderId;

  /// [senderName] Name of the sender
  final String senderName;

  /// [isOutgoing] True, if the message is outgoing
  final bool isOutgoing;

  /// [content] Push message content
  final PushMessageContent content;

  static const String constructor = 'notificationTypeNewPushMessage';

  static NotificationTypeNewPushMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewPushMessage(
      messageId: json['message_id'],
      senderId: MessageSender.fromJson(json['sender_id'])!,
      senderName: json['sender_name'],
      isOutgoing: json['is_outgoing'],
      content: PushMessageContent.fromJson(json['content'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'sender_id': senderId.toJson(),
        'sender_name': senderName,
        'is_outgoing': isOutgoing,
        'content': content.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
