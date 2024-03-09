import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a public repost to a story
@immutable
class PublicForwardStory extends PublicForward {
  const PublicForwardStory({
    required this.story,
  });

  /// [story] Information about the story
  final Story story;

  static const String constructor = 'publicForwardStory';

  static PublicForwardStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicForwardStory(
      story: Story.fromJson(json['story'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story': story.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
