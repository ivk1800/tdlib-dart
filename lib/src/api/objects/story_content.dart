import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains the content of a story
@immutable
abstract class StoryContent extends TdObject {
  const StoryContent();

  static const String constructor = 'storyContent';

  /// Inherited by:
  /// [StoryContentPhoto]
  /// [StoryContentUnsupported]
  /// [StoryContentVideo]
  static StoryContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryContentPhoto.constructor:
        return StoryContentPhoto.fromJson(json);
      case StoryContentUnsupported.constructor:
        return StoryContentUnsupported.fromJson(json);
      case StoryContentVideo.constructor:
        return StoryContentVideo.fromJson(json);
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
