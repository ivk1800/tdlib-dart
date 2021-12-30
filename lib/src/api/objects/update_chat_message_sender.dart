import '../tdapi.dart';

/// The message sender that is selected to send messages in a chat has changed
class UpdateChatMessageSender extends Update {
  UpdateChatMessageSender({required this.chatId, this.messageSenderId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageSenderId] New value of message_sender_id; may be null if the user
  /// can't change message sender
  final MessageSender? messageSenderId;

  static const String CONSTRUCTOR = 'updateChatMessageSender';

  static UpdateChatMessageSender? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMessageSender(
        chatId: json['chat_id'],
        messageSenderId: MessageSender.fromJson(json['message_sender_id']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_sender_id': this.messageSenderId?.toJson(),
        '@type': CONSTRUCTOR
      };
}
