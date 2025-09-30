import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a forwarded story
@immutable
class MessageStory extends MessageContent {
  const MessageStory({
    required this.storyPosterChatId,
    required this.storyId,
    required this.viaMention,
  });

  /// [storyPosterChatId] Identifier of the chat that posted the story
  final int storyPosterChatId;

  /// [storyId] Story identifier
  final int storyId;

  /// [viaMention] True, if the story was automatically forwarded because of a
  /// mention of the user
  final bool viaMention;

  static const String constructor = 'messageStory';

  static MessageStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageStory(
      storyPosterChatId: json['story_poster_chat_id'] as int,
      storyId: json['story_id'] as int,
      viaMention: json['via_mention'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'story_poster_chat_id': storyPosterChatId,
    'story_id': storyId,
    'via_mention': viaMention,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
