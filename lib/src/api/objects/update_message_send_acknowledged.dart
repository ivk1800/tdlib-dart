import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A request to send a message has reached the Telegram server. This doesn't
/// mean that the message will be sent successfully or even that the send
/// message request will be processed. This update will be sent only if the
/// option "use_quick_ack" is set to true. This update may be sent multiple
/// times for the same message
class UpdateMessageSendAcknowledged extends Update {
  UpdateMessageSendAcknowledged(
      {required this.chatId, required this.messageId});

  /// [chatId] The chat identifier of the sent message
  final int chatId;

  /// [messageId] A temporary message identifier
  final int messageId;

  static const String CONSTRUCTOR = 'updateMessageSendAcknowledged';

  static UpdateMessageSendAcknowledged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSendAcknowledged(
        chatId: json['chat_id'], messageId: json['message_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
