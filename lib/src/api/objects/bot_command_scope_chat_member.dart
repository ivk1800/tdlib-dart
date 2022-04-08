import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A scope covering a member of a chat
@immutable
class BotCommandScopeChatMember extends BotCommandScope {
  const BotCommandScopeChatMember({
    required this.chatId,
    required this.userId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [userId] User identifier
  final int userId;

  static const String constructor = 'botCommandScopeChatMember';

  static BotCommandScopeChatMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotCommandScopeChatMember(
      chatId: json['chat_id'],
      userId: json['user_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
