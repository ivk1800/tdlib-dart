import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A scope covering all users
@immutable
class BotCommandScopeDefault extends BotCommandScope {
  const BotCommandScopeDefault();

  static const String constructor = 'botCommandScopeDefault';

  static BotCommandScopeDefault? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BotCommandScopeDefault();
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
