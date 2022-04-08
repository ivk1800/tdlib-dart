import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A scope covering all group and supergroup chat administrators
@immutable
class BotCommandScopeAllChatAdministrators extends BotCommandScope {
  const BotCommandScopeAllChatAdministrators();

  static const String constructor = 'botCommandScopeAllChatAdministrators';

  static BotCommandScopeAllChatAdministrators? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllChatAdministrators();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
