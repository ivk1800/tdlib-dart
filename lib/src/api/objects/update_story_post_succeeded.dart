import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A story has been successfully posted
@immutable
class UpdateStoryPostSucceeded extends Update {
  const UpdateStoryPostSucceeded({
    required this.story,
    required this.oldStoryId,
  });

  /// [story] The posted story
  final Story story;

  /// [oldStoryId] The previous temporary story identifier
  final int oldStoryId;

  static const String constructor = 'updateStoryPostSucceeded';

  static UpdateStoryPostSucceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStoryPostSucceeded(
      story: Story.fromJson(json['story'] as Map<String, dynamic>?)!,
      oldStoryId: json['old_story_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story': story.toJson(),
    'old_story_id': oldStoryId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
