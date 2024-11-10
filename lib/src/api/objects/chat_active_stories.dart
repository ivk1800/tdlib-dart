import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes active stories posted by a chat
@immutable
class ChatActiveStories extends TdObject {
  const ChatActiveStories({
    required this.chatId,
    this.list,
    required this.order,
    required this.maxReadStoryId,
    required this.stories,
  });

  /// [chatId] Identifier of the chat that posted the stories
  final int chatId;

  /// [list] Identifier of the story list in which the stories are shown; may be
  /// null if the stories aren't shown in a story list
  final StoryList? list;

  /// [order] A parameter used to determine order of the stories in the story
  /// list; 0 if the stories doesn't need to be shown in the story list. Stories
  /// must be sorted by the pair (order, story_sender_chat_id) in descending
  /// order
  final int order;

  /// [maxReadStoryId] Identifier of the last read active story
  final int maxReadStoryId;

  /// [stories] Basic information about the stories; use getStory to get full
  /// information about the stories. The stories are in chronological order
  /// (i.e., in order of increasing story identifiers)
  final List<StoryInfo> stories;

  static const String constructor = 'chatActiveStories';

  static ChatActiveStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActiveStories(
      chatId: json['chat_id'] as int,
      list: StoryList.fromJson(json['list'] as Map<String, dynamic>?),
      order: json['order'] as int,
      maxReadStoryId: json['max_read_story_id'] as int,
      stories: List<StoryInfo>.from(
          ((json['stories'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StoryInfo.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'list': list?.toJson(),
        'order': order,
        'max_read_story_id': maxReadStoryId,
        'stories': stories.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
