import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a replied story
@immutable
class MessageReplyToStory extends MessageReplyTo {
  const MessageReplyToStory({
    required this.storySenderChatId,
    required this.storyId,
  });

  /// [storySenderChatId] The identifier of the sender of the replied story.
  /// Currently, stories can be replied only in the sender's chat
  final int storySenderChatId;

  /// [storyId] The identifier of the replied story
  final int storyId;

  static const String constructor = 'messageReplyToStory';

  static MessageReplyToStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReplyToStory(
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
