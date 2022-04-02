import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A scope covering a member of a chat
class BotCommandScopeChatMember extends BotCommandScope {
  BotCommandScopeChatMember({required this.chatId, required this.userId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] User identifier
  final int userId;

  static const String CONSTRUCTOR = 'botCommandScopeChatMember';

  static BotCommandScopeChatMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommandScopeChatMember(
        chatId: json['chat_id'], userId: json['user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'user_id': this.userId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
