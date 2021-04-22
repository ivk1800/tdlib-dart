import '../tdapi.dart';

/// A message has been successfully sent
class UpdateMessageSendSucceeded extends Update {
  UpdateMessageSendSucceeded(
      {required this.message, required this.oldMessageId});

  /// [message] Information about the sent message. Usually only the message
  /// identifier, date, and content are changed, but almost all other fields can
  /// also change
  final Message message;

  /// [oldMessageId] The previous temporary message identifier
  final int oldMessageId;

  static const String CONSTRUCTOR = 'updateMessageSendSucceeded';

  static UpdateMessageSendSucceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSendSucceeded(
        message: Message.fromJson(json['message'])!,
        oldMessageId: json['old_message_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'message': this.message.toJson(),
        'old_message_id': this.oldMessageId,
        '@type': CONSTRUCTOR
      };
}
