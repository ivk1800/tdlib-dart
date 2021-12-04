import '../tdapi.dart';

/// A scope covering all group and supergroup chats
class BotCommandScopeAllGroupChats extends BotCommandScope {
  const BotCommandScopeAllGroupChats();

  static const String CONSTRUCTOR = 'botCommandScopeAllGroupChats';

  static BotCommandScopeAllGroupChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllGroupChats();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
