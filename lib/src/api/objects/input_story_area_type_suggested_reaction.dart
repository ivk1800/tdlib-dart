import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An area pointing to a suggested reaction
@immutable
class InputStoryAreaTypeSuggestedReaction extends InputStoryAreaType {
  const InputStoryAreaTypeSuggestedReaction({
    required this.reactionType,
    required this.isDark,
    required this.isFlipped,
  });

  /// [reactionType] Type of the reaction
  final ReactionType reactionType;

  /// [isDark] True, if reaction has a dark background
  final bool isDark;

  /// [isFlipped] True, if reaction corner is flipped
  final bool isFlipped;

  static const String constructor = 'inputStoryAreaTypeSuggestedReaction';

  static InputStoryAreaTypeSuggestedReaction? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryAreaTypeSuggestedReaction(
      reactionType: ReactionType.fromJson(
          json['reaction_type'] as Map<String, dynamic>?)!,
      isDark: json['is_dark'] as bool,
      isFlipped: json['is_flipped'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'reaction_type': reactionType.toJson(),
        'is_dark': isDark,
        'is_flipped': isFlipped,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
