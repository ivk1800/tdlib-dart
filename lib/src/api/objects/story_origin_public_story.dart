import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The original story was a public story with known sender
@immutable
class StoryOriginPublicStory extends StoryOrigin {
  const StoryOriginPublicStory({
    required this.chatId,
    required this.storyId,
  });

  /// [chatId] Identifier of the chat that posted original story
  final int chatId;

  /// [storyId] Story identifier of the original story
  final int storyId;

  static const String constructor = 'storyOriginPublicStory';

  static StoryOriginPublicStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryOriginPublicStory(
      chatId: json['chat_id'] as int,
      storyId: json['story_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'story_id': storyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
