import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes chosen reaction on a story
/// Returns [Ok]
@immutable
class SetStoryReaction extends TdFunction {
  const SetStoryReaction({
    required this.storySenderChatId,
    required this.storyId,
    this.reactionType,
    required this.updateRecentReactions,
  });

  /// [storySenderChatId] The identifier of the sender of the story
  final int storySenderChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  /// [reactionType] Type of the reaction to set; pass null to remove the
  /// reaction. `reactionTypeCustomEmoji` reactions can be used only by Telegram
  /// Premium users
  final ReactionType? reactionType;

  /// [updateRecentReactions] Pass true if the reaction needs to be added to
  /// recent reactions
  final bool updateRecentReactions;

  static const String constructor = 'setStoryReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_sender_chat_id': storySenderChatId,
        'story_id': storyId,
        'reaction_type': reactionType?.toJson(),
        'update_recent_reactions': updateRecentReactions,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
