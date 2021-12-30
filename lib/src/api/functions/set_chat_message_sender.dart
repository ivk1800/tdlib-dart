import '../tdapi.dart';

/// Selects a message sender to send messages in a chat
/// Returns [Ok]
class SetChatMessageSender extends TdFunction {
  SetChatMessageSender({required this.chatId, required this.messageSenderId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageSenderId] New message sender for the chat
  final MessageSender messageSenderId;

  static const String CONSTRUCTOR = 'setChatMessageSender';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_sender_id': this.messageSenderId.toJson(),
        '@type': CONSTRUCTOR
      };
}
