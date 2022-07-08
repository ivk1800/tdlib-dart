import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat unread_reaction_count has changed
@immutable
class UpdateChatUnreadReactionCount extends Update {
  const UpdateChatUnreadReactionCount({
    required this.chatId,
    required this.unreadReactionCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [unreadReactionCount] The number of messages with unread reactions left in
  /// the chat
  final int unreadReactionCount;

  static const String constructor = 'updateChatUnreadReactionCount';

  static UpdateChatUnreadReactionCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatUnreadReactionCount(
      chatId: json['chat_id'],
      unreadReactionCount: json['unread_reaction_count'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'unread_reaction_count': unreadReactionCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
