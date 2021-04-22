import '../tdapi.dart';

/// Returns information about a message
/// Returns [Message]
class GetMessage extends TdFunction {
  GetMessage({required this.chatId, required this.messageId});

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message to get
  final int messageId;

  static const String CONSTRUCTOR = 'getMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };
}
