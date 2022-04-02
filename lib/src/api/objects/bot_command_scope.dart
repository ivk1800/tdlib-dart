import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents the scope to which bot commands are relevant
abstract class BotCommandScope extends TdObject {
  const BotCommandScope();

  static const String CONSTRUCTOR = 'botCommandScope';

  /// Inherited by:
  /// [BotCommandScopeDefault]
  /// [BotCommandScopeAllPrivateChats]
  /// [BotCommandScopeAllGroupChats]
  /// [BotCommandScopeAllChatAdministrators]
  /// [BotCommandScopeChat]
  /// [BotCommandScopeChatAdministrators]
  /// [BotCommandScopeChatMember]
  static BotCommandScope? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case BotCommandScopeDefault.CONSTRUCTOR:
        return BotCommandScopeDefault.fromJson(json);
      case BotCommandScopeAllPrivateChats.CONSTRUCTOR:
        return BotCommandScopeAllPrivateChats.fromJson(json);
      case BotCommandScopeAllGroupChats.CONSTRUCTOR:
        return BotCommandScopeAllGroupChats.fromJson(json);
      case BotCommandScopeAllChatAdministrators.CONSTRUCTOR:
        return BotCommandScopeAllChatAdministrators.fromJson(json);
      case BotCommandScopeChat.CONSTRUCTOR:
        return BotCommandScopeChat.fromJson(json);
      case BotCommandScopeChatAdministrators.CONSTRUCTOR:
        return BotCommandScopeChatAdministrators.fromJson(json);
      case BotCommandScopeChatMember.CONSTRUCTOR:
        return BotCommandScopeChatMember.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
