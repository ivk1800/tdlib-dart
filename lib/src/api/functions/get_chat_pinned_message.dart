import '../tdapi.dart';

/// Returns information about a newest pinned message in the chat
/// Returns [Message]
class GetChatPinnedMessage extends TdFunction {
  GetChatPinnedMessage({required this.chatId});

  /// [chatId] Identifier of the chat the message belongs to
  final int chatId;

  static const String CONSTRUCTOR = 'getChatPinnedMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
