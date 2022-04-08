import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the scope to which bot commands are relevant
@immutable
abstract class BotCommandScope extends TdObject {
  const BotCommandScope();

  static const String constructor = 'botCommandScope';

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

    switch (json['@type']) {
      case BotCommandScopeDefault.constructor:
        return BotCommandScopeDefault.fromJson(json);
      case BotCommandScopeAllPrivateChats.constructor:
        return BotCommandScopeAllPrivateChats.fromJson(json);
      case BotCommandScopeAllGroupChats.constructor:
        return BotCommandScopeAllGroupChats.fromJson(json);
      case BotCommandScopeAllChatAdministrators.constructor:
        return BotCommandScopeAllChatAdministrators.fromJson(json);
      case BotCommandScopeChat.constructor:
        return BotCommandScopeChat.fromJson(json);
      case BotCommandScopeChatAdministrators.constructor:
        return BotCommandScopeChatAdministrators.fromJson(json);
      case BotCommandScopeChatMember.constructor:
        return BotCommandScopeChatMember.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
