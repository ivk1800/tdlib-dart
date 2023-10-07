import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of a clickable rectangle area on a story media
@immutable
abstract class StoryAreaType extends TdObject {
  const StoryAreaType();

  static const String constructor = 'storyAreaType';

  /// Inherited by:
  /// [StoryAreaTypeLocation]
  /// [StoryAreaTypeSuggestedReaction]
  /// [StoryAreaTypeVenue]
  static StoryAreaType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryAreaTypeLocation.constructor:
        return StoryAreaTypeLocation.fromJson(json);
      case StoryAreaTypeSuggestedReaction.constructor:
        return StoryAreaTypeSuggestedReaction.fromJson(json);
      case StoryAreaTypeVenue.constructor:
        return StoryAreaTypeVenue.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
