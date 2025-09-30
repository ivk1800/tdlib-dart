import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a story replied by a given message
@immutable
class MessageReplyToStory extends MessageReplyTo {
  const MessageReplyToStory({
    required this.storyPosterChatId,
    required this.storyId,
  });

  /// [storyPosterChatId] The identifier of the poster of the story
  final int storyPosterChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  static const String constructor = 'messageReplyToStory';

  static MessageReplyToStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReplyToStory(
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
