import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An area pointing to a suggested reaction. App needs to show a clickable
/// reaction on the area and call setStoryReaction when the are is clicked
@immutable
class StoryAreaTypeSuggestedReaction extends StoryAreaType {
  const StoryAreaTypeSuggestedReaction({
    required this.reactionType,
    required this.totalCount,
    required this.isDark,
    required this.isFlipped,
  });

  /// [reactionType] Type of the reaction
  final ReactionType reactionType;

  /// [totalCount] Number of times the reaction was added
  final int totalCount;

  /// [isDark] True, if reaction has a dark background
  final bool isDark;

  /// [isFlipped] True, if reaction corner is flipped
  final bool isFlipped;

  static const String constructor = 'storyAreaTypeSuggestedReaction';

  static StoryAreaTypeSuggestedReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryAreaTypeSuggestedReaction(
      reactionType: ReactionType.fromJson(
          json['reaction_type'] as Map<String, dynamic>?)!,
      totalCount: json['total_count'] as int,
      isDark: json['is_dark'] as bool,
      isFlipped: json['is_flipped'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reaction_type': reactionType.toJson(),
        'total_count': totalCount,
        'is_dark': isDark,
        'is_flipped': isFlipped,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
