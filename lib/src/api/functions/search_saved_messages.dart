import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for messages tagged by the given reaction and with the given
/// words in the Saved Messages chat; for Telegram Premium users only. Returns
/// the results in reverse chronological order, i.e. in order of decreasing
/// message_id For optimal performance, the number of returned messages is
/// chosen by TDLib and can be smaller than the specified limit
/// Returns [FoundChatMessages]
@immutable
class SearchSavedMessages extends TdFunction {
  const SearchSavedMessages({
    required this.savedMessagesTopicId,
    this.tag,
    required this.query,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
  });

  /// [savedMessagesTopicId] If not 0, only messages in the specified Saved
  /// Messages topic will be considered; pass 0 to consider all messages
  final int savedMessagesTopicId;

  /// [tag] Tag to search for; pass null to return all suitable messages
  final ReactionType? tag;

  /// [query] Query to search for
  final String query;

  /// [fromMessageId] Identifier of the message starting from which messages
  /// must be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// [offset] Specify 0 to get results from exactly the message from_message_id
  /// or a negative offset to get the specified message and some newer messages
  final int offset;

  /// [limit] The maximum number of messages to be returned; must be positive
  /// and can't be greater than 100. If the offset is negative, the limit must
  /// be greater than -offset. For optimal performance, the number of returned
  /// messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  static const String constructor = 'searchSavedMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'saved_messages_topic_id': savedMessagesTopicId,
        'tag': tag?.toJson(),
        'query': query,
        'from_message_id': fromMessageId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
