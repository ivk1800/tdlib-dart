import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A scope covering all administrators of a chat
class BotCommandScopeChatAdministrators extends BotCommandScope {
  BotCommandScopeChatAdministrators({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'botCommandScopeChatAdministrators';

  static BotCommandScopeChatAdministrators? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommandScopeChatAdministrators(chatId: json['chat_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
