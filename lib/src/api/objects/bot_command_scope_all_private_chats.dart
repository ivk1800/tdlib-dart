import '../tdapi.dart';

/// A scope covering all private chats
class BotCommandScopeAllPrivateChats extends BotCommandScope {
  const BotCommandScopeAllPrivateChats();

  static const String CONSTRUCTOR = 'botCommandScopeAllPrivateChats';

  static BotCommandScopeAllPrivateChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllPrivateChats();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
