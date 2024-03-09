import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reactions added to a message with anonymous reactions have changed; for
/// bots only
@immutable
class UpdateMessageReactions extends Update {
  const UpdateMessageReactions({
    required this.chatId,
    required this.messageId,
    required this.date,
    required this.reactions,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [date] Point in time (Unix timestamp) when the reactions were changed
  final int date;

  /// [reactions] The list of reactions added to the message
  final List<MessageReaction> reactions;

  static const String constructor = 'updateMessageReactions';

  static UpdateMessageReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageReactions(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      date: json['date'] as int,
      reactions: List<MessageReaction>.from(
          ((json['reactions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => MessageReaction.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'date': date,
        'reactions': reactions.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
