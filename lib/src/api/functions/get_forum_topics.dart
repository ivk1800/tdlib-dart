import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns found forum topics in a forum chat. This is a temporary method for
/// getting information about topic list from the server
/// Returns [ForumTopics]
@immutable
class GetForumTopics extends TdFunction {
  const GetForumTopics({
    required this.chatId,
    required this.query,
    required this.offsetDate,
    required this.offsetMessageId,
    required this.offsetMessageThreadId,
    required this.limit,
  });

  /// [chatId] Identifier of the forum chat
  final int chatId;

  /// [query] Query to search for in the forum topic's name
  final String query;

  /// [offsetDate] The date starting from which the results need to be fetched.
  /// Use 0 or any date in the future to get results from the last topic
  final int offsetDate;

  /// [offsetMessageId] The message identifier of the last message in the last
  /// found topic, or 0 for the first request
  final int offsetMessageId;

  /// [offsetMessageThreadId] The message thread identifier of the last found
  /// topic, or 0 for the first request
  final int offsetMessageThreadId;

  /// [limit] The maximum number of forum topics to be returned; up to 100. For
  /// optimal performance, the number of returned forum topics is chosen by
  /// TDLib and can be smaller than the specified limit
  final int limit;

  static const String constructor = 'getForumTopics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'query': query,
        'offset_date': offsetDate,
        'offset_message_id': offsetMessageId,
        'offset_message_thread_id': offsetMessageThreadId,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
