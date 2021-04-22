import '../tdapi.dart';

/// Returns list of user and chat, which can be used as aliases to join a
/// voice chat in the chat
/// Returns [MessageSenders]
class GetAvailableVoiceChatAliases extends TdFunction {
  GetAvailableVoiceChatAliases({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'getAvailableVoiceChatAliases';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
