import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of unread reactions added to a message was changed
@immutable
class UpdateMessageUnreadReactions extends Update {
  const UpdateMessageUnreadReactions({
    required this.chatId,
    required this.messageId,
    required this.unreadReactions,
    required this.unreadReactionCount,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [unreadReactions] The new list of unread reactions
  final List<UnreadReaction> unreadReactions;

  /// [unreadReactionCount] The new number of messages with unread reactions
  /// left in the chat
  final int unreadReactionCount;

  static const String constructor = 'updateMessageUnreadReactions';

  static UpdateMessageUnreadReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageUnreadReactions(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      unreadReactions: List<UnreadReaction>.from(
          (json['unread_reactions'] ?? [])
              .map((item) => UnreadReaction.fromJson(item))
              .toList()),
      unreadReactionCount: json['unread_reaction_count'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'unread_reactions':
            unreadReactions.map((item) => item.toJson()).toList(),
        'unread_reaction_count': unreadReactionCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
