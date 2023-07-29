import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Number of chats in a story list has changed
@immutable
class UpdateStoryListChatCount extends Update {
  const UpdateStoryListChatCount({
    required this.storyList,
    required this.chatCount,
  });

  /// [storyList] The story list
  final StoryList storyList;

  /// [chatCount] Approximate total number of chats with active stories in the
  /// list
  final int chatCount;

  static const String constructor = 'updateStoryListChatCount';

  static UpdateStoryListChatCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStoryListChatCount(
      storyList:
          StoryList.fromJson(json['story_list'] as Map<String, dynamic>?)!,
      chatCount: json['chat_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_list': storyList.toJson(),
        'chat_count': chatCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
