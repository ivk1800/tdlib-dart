import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a story to be replied
@immutable
class InputMessageReplyToStory extends InputMessageReplyTo {
  const InputMessageReplyToStory({
    required this.storySenderChatId,
    required this.storyId,
  });

  /// [storySenderChatId] The identifier of the sender of the story. Currently,
  /// stories can be replied only in the sender's chat
  final int storySenderChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  static const String constructor = 'inputMessageReplyToStory';

  static InputMessageReplyToStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageReplyToStory(
      storySenderChatId: json['story_sender_chat_id'] as int,
      storyId: json['story_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_sender_chat_id': storySenderChatId,
        'story_id': storyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
