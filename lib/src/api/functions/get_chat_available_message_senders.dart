import '../tdapi.dart';

/// Returns list of message sender identifiers, which can be used to send
/// messages in a chat
/// Returns [MessageSenders]
class GetChatAvailableMessageSenders extends TdFunction {
  GetChatAvailableMessageSenders({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'getChatAvailableMessageSenders';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
