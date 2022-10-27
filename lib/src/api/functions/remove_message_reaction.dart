import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a reaction from a message. A chosen reaction can always be removed
/// Returns [Ok]
@immutable
class RemoveMessageReaction extends TdFunction {
  const RemoveMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.reactionType,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [reactionType] Type of the reaction to remove
  final ReactionType reactionType;

  static const String constructor = 'removeMessageReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reaction_type': reactionType.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
