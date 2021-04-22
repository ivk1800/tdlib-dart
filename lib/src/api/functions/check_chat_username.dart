import '../tdapi.dart';

/// Checks whether a username can be set for a chat
/// Returns [CheckChatUsernameResult]
class CheckChatUsername extends TdFunction {
  CheckChatUsername({required this.chatId, required this.username});

  /// [chatId] Chat identifier; should be identifier of a supergroup chat, or a
  /// channel chat, or a private chat with self, or zero if chat is being
  /// created
  final int chatId;

  /// [username] Username to be checked
  final String username;

  static const String CONSTRUCTOR = 'checkChatUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'username': this.username, '@type': CONSTRUCTOR};
}
