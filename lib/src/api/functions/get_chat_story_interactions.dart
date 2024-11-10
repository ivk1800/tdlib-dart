import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns interactions with a story posted in a chat. Can be used only if
/// story is posted on behalf of a chat and the user is an administrator in
/// the chat
/// Returns [StoryInteractions]
@immutable
class GetChatStoryInteractions extends TdFunction {
  const GetChatStoryInteractions({
    required this.storySenderChatId,
    required this.storyId,
    this.reactionType,
    required this.preferForwards,
    required this.offset,
    required this.limit,
  });

  /// [storySenderChatId] The identifier of the sender of the story
  final int storySenderChatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [reactionType] Pass the default heart reaction or a suggested reaction
  /// type to receive only interactions with the specified reaction type; pass
  /// null to receive all interactions; reactionTypePaid isn't supported
  final ReactionType? reactionType;

  /// [preferForwards] Pass true to get forwards and reposts first, then
  /// reactions, then other views; pass false to get interactions sorted just by
  /// interaction date
  final bool preferForwards;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of story interactions to return
  final int limit;

  static const String constructor = 'getChatStoryInteractions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_sender_chat_id': storySenderChatId,
        'story_id': storyId,
        'reaction_type': reactionType?.toJson(),
        'prefer_forwards': preferForwards,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
