import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a forwarded story. Stories can't be forwarded to secret
/// chats. A story can be forwarded only if story.can_be_forwarded
@immutable
class InputMessageStory extends InputMessageContent {
  const InputMessageStory({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'inputMessageStory';

  static InputMessageStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageStory(
      storyPosterChatId: json['story_poster_chat_id'] as int,
      storyId: json['story_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
