import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A scope covering all members of a chat
class BotCommandScopeChat extends BotCommandScope {
  BotCommandScopeChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'botCommandScopeChat';

  static BotCommandScopeChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommandScopeChat(chatId: json['chat_id']);
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
