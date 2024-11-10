import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a story. Link preview description is unavailable
@immutable
class LinkPreviewTypeStory extends LinkPreviewType {
  const LinkPreviewTypeStory({
    required this.storySenderChatId,
    required this.storyId,
  });

  /// [storySenderChatId] The identifier of the chat that posted the story
  final int storySenderChatId;

  /// [storyId] Story identifier
  final int storyId;

  static const String constructor = 'linkPreviewTypeStory';

  static LinkPreviewTypeStory? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeStory(
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
