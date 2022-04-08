import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A scope covering all group and supergroup chats
@immutable
class BotCommandScopeAllGroupChats extends BotCommandScope {
  const BotCommandScopeAllGroupChats();

  static const String constructor = 'botCommandScopeAllGroupChats';

  static BotCommandScopeAllGroupChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeAllGroupChats();
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
