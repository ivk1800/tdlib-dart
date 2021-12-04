import '../tdapi.dart';

/// A scope covering all users
class BotCommandScopeDefault extends BotCommandScope {
  const BotCommandScopeDefault();

  static const String CONSTRUCTOR = 'botCommandScopeDefault';

  static BotCommandScopeDefault? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeDefault();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
