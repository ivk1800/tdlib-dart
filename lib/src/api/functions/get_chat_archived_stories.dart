import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of all stories posted by the given chat; requires
/// can_edit_stories rights for channel chats. The stories are returned in a
/// reverse chronological order (i.e., in order of decreasing story_id). For
/// optimal performance, the number of returned stories is chosen by TDLib
/// Returns [Stories]
@immutable
class GetChatArchivedStories extends TdFunction {
  const GetChatArchivedStories({
    required this.chatId,
    required this.fromStoryId,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [fromStoryId] Identifier of the story starting from which stories must be
  /// returned; use 0 to get results from the last story
  final int fromStoryId;

  /// [limit] The maximum number of stories to be returned For optimal
  /// performance, the number of returned stories is chosen by TDLib and can be
  /// smaller than the specified limit
  final int limit;

  static const String constructor = 'getChatArchivedStories';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'from_story_id': fromStoryId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
