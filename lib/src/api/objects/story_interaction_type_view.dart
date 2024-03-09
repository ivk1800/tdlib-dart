import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A view of the story
@immutable
class StoryInteractionTypeView extends StoryInteractionType {
  const StoryInteractionTypeView({
    this.chosenReactionType,
  });

  /// [chosenReactionType] Type of the reaction that was chosen by the viewer;
  /// may be null if none
  final ReactionType? chosenReactionType;

  static const String constructor = 'storyInteractionTypeView';

  static StoryInteractionTypeView? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryInteractionTypeView(
      chosenReactionType: ReactionType.fromJson(
          json['chosen_reaction_type'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chosen_reaction_type': chosenReactionType?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
