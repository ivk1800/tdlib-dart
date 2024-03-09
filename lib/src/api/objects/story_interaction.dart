import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents interaction with a story
@immutable
class StoryInteraction extends TdObject {
  const StoryInteraction({
    required this.actorId,
    required this.interactionDate,
    this.blockList,
    required this.type,
  });

  /// [actorId] Identifier of the user or chat that made the interaction
  final MessageSender actorId;

  /// [interactionDate] Approximate point in time (Unix timestamp) when the
  /// interaction happened
  final int interactionDate;

  /// [blockList] Block list to which the actor is added; may be null if none or
  /// for chat stories
  final BlockList? blockList;

  /// [type] Type of the interaction
  final StoryInteractionType type;

  static const String constructor = 'storyInteraction';

  static StoryInteraction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInteraction(
      actorId:
          MessageSender.fromJson(json['actor_id'] as Map<String, dynamic>?)!,
      interactionDate: json['interaction_date'] as int,
      blockList:
          BlockList.fromJson(json['block_list'] as Map<String, dynamic>?),
      type:
          StoryInteractionType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'actor_id': actorId.toJson(),
        'interaction_date': interactionDate,
        'block_list': blockList?.toJson(),
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
