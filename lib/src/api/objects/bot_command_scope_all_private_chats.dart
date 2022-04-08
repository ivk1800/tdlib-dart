import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A scope covering all private chats
@immutable
class BotCommandScopeAllPrivateChats extends BotCommandScope {
  const BotCommandScopeAllPrivateChats();

  static const String constructor = 'botCommandScopeAllPrivateChats';

  static BotCommandScopeAllPrivateChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllPrivateChats();
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
