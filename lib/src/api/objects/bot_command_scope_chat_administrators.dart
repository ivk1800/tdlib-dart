import '../tdapi.dart';

/// A scope covering all administrators of a chat
class BotCommandScopeChatAdministrators extends BotCommandScope {
  BotCommandScopeChatAdministrators({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'botCommandScopeChatAdministrators';

  static BotCommandScopeChatAdministrators? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommandScopeChatAdministrators(chatId: json['chat_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
