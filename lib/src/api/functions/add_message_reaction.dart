import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a reaction or a tag to a message. Use getMessageAvailableReactions to
/// receive the list of available reactions for the message
/// Returns [Ok]
@immutable
class AddMessageReaction extends TdFunction {
  const AddMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.reactionType,
    required this.isBig,
    required this.updateRecentReactions,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [reactionType] Type of the reaction to add. Use
  /// addPendingPaidMessageReaction instead to add the paid reaction
  final ReactionType reactionType;

  /// [isBig] Pass true if the reaction is added with a big animation
  final bool isBig;

  /// [updateRecentReactions] Pass true if the reaction needs to be added to
  /// recent reactions; tags are never added to the list of recent reactions
  final bool updateRecentReactions;

  static const String constructor = 'addMessageReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reaction_type': reactionType.toJson(),
        'is_big': isBig,
        'update_recent_reactions': updateRecentReactions,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
