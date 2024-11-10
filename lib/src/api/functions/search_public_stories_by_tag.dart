import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for public stories containing the given hashtag or cashtag. For
/// optimal performance, the number of returned stories is chosen by TDLib and
/// can be smaller than the specified limit
/// Returns [FoundStories]
@immutable
class SearchPublicStoriesByTag extends TdFunction {
  const SearchPublicStoriesByTag({
    required this.storySenderChatId,
    required this.tag,
    required this.offset,
    required this.limit,
  });

  /// [storySenderChatId] Identifier of the chat that posted the stories to
  /// search for; pass 0 to search stories in all chats
  final int storySenderChatId;

  /// [tag] Hashtag or cashtag to search for
  final String tag;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of stories to be returned; up to 100. For
  /// optimal performance, the number of returned stories is chosen by TDLib and
  /// can be smaller than the specified limit
  final int limit;

  static const String constructor = 'searchPublicStoriesByTag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'story_sender_chat_id': storySenderChatId,
        'tag': tag,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
