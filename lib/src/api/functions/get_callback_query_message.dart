import '../tdapi.dart';

/// Returns information about a message with the callback button that
/// originated a callback query; for bots only
/// Returns [Message]
class GetCallbackQueryMessage extends TdFunction {
  GetCallbackQueryMessage(
      {required this.chatId,
      required this.messageId,
      required this.callbackQueryId});

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [callbackQueryId] Identifier of the callback query
  final int callbackQueryId;

  static const String CONSTRUCTOR = 'getCallbackQueryMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'callback_query_id': this.callbackQueryId,
        '@type': CONSTRUCTOR
      };
}
