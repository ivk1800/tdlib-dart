import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A story has been successfully sent
@immutable
class UpdateStorySendSucceeded extends Update {
  const UpdateStorySendSucceeded({
    required this.story,
    required this.oldStoryId,
  });

  /// [story] The sent story
  final Story story;

  /// [oldStoryId] The previous temporary story identifier
  final int oldStoryId;

  static const String constructor = 'updateStorySendSucceeded';

  static UpdateStorySendSucceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStorySendSucceeded(
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
