import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A scope covering all administrators of a chat
@immutable
class BotCommandScopeChatAdministrators extends BotCommandScope {
  const BotCommandScopeChatAdministrators({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'botCommandScopeChatAdministrators';

  static BotCommandScopeChatAdministrators? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommandScopeChatAdministrators(
      chatId: json['chat_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
