import '../tdapi.dart';

/// Returns information about a message, if it is available locally without
/// sending network request. This is an offline request
/// Returns [Message]
class GetMessageLocally extends TdFunction {
  GetMessageLocally({required this.chatId, required this.messageId});

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message to get
  final int messageId;

  static const String CONSTRUCTOR = 'getMessageLocally';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };
}
