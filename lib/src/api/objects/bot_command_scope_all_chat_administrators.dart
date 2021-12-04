import '../tdapi.dart';

/// A scope covering all group and supergroup chat administrators
class BotCommandScopeAllChatAdministrators extends BotCommandScope {
  const BotCommandScopeAllChatAdministrators();

  static const String CONSTRUCTOR = 'botCommandScopeAllChatAdministrators';

  static BotCommandScopeAllChatAdministrators? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllChatAdministrators();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
