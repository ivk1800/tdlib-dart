import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A detailed statistics about a story
@immutable
class StoryStatistics extends TdObject {
  const StoryStatistics({
    required this.storyInteractionGraph,
    required this.storyReactionGraph,
  });

  /// [storyInteractionGraph] A graph containing number of story views and
  /// shares
  final StatisticalGraph storyInteractionGraph;

  /// [storyReactionGraph] A graph containing number of story reactions
  final StatisticalGraph storyReactionGraph;

  static const String constructor = 'storyStatistics';

  static StoryStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryStatistics(
      storyInteractionGraph: StatisticalGraph.fromJson(
          json['story_interaction_graph'] as Map<String, dynamic>?)!,
      storyReactionGraph: StatisticalGraph.fromJson(
          json['story_reaction_graph'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_interaction_graph': storyInteractionGraph.toJson(),
        'story_reaction_graph': storyReactionGraph.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
