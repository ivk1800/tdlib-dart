import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns forwards of a story as a message to public chats and reposts by
/// public channels. Can be used only if the story is posted on behalf of the
/// current user or story.can_get_statistics == true. For optimal performance,
/// the number of returned messages and stories is chosen by TDLib
/// Returns [PublicForwards]
@immutable
class GetStoryPublicForwards extends TdFunction {
  const GetStoryPublicForwards({
    required this.storySenderChatId,
    required this.storyId,
    required this.offset,
    required this.limit,
  });

  /// [storySenderChatId] The identifier of the sender of the story
  final int storySenderChatId;

  /// [storyId] The identifier of the story
  final int storyId;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of messages and stories to be returned; must be
  /// positive and can't be greater than 100. For optimal performance, the
  /// number of returned objects is chosen by TDLib and can be smaller than the
  /// specified limit
  final int limit;

  static const String constructor = 'getStoryPublicForwards';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_sender_chat_id': storySenderChatId,
        'story_id': storyId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
