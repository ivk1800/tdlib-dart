import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A scope covering all members of a chat
@immutable
class BotCommandScopeChat extends BotCommandScope {
  const BotCommandScopeChat({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'botCommandScopeChat';

  static BotCommandScopeChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommandScopeChat(
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
