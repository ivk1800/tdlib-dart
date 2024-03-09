import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the origin of a story that was reposted
@immutable
abstract class StoryOrigin extends TdObject {
  const StoryOrigin();

  static const String constructor = 'storyOrigin';

  /// Inherited by:
  /// [StoryOriginHiddenUser]
  /// [StoryOriginPublicStory]
  static StoryOrigin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StoryOriginHiddenUser.constructor:
        return StoryOriginHiddenUser.fromJson(json);
      case StoryOriginPublicStory.constructor:
        return StoryOriginPublicStory.fromJson(json);
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
