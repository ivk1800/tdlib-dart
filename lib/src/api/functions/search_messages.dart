import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for messages in all chats except secret chats. Returns the
/// results in reverse chronological order (i.e., in order of decreasing
/// (date, chat_id, message_id)). For optimal performance, the number of
/// returned messages is chosen by TDLib and can be smaller than the specified
/// limit
/// Returns [FoundMessages]
@immutable
class SearchMessages extends TdFunction {
  const SearchMessages({
    this.chatList,
    required this.onlyInChannels,
    required this.query,
    required this.offset,
    required this.limit,
    this.filter,
    required this.minDate,
    required this.maxDate,
  });

  /// [chatList] Chat list in which to search messages; pass null to search in
  /// all chats regardless of their chat list. Only Main and Archive chat lists
  /// are supported
  final ChatList? chatList;

  /// [onlyInChannels] Pass true to search only for messages in channels
  final bool onlyInChannels;

  /// [query] Query to search for
  final String query;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of messages to be returned; up to 100. For
  /// optimal performance, the number of returned messages is chosen by TDLib
  /// and can be smaller than the specified limit
  final int limit;

  /// [filter] Additional filter for messages to search; pass null to search for
  /// all messages. Filters searchMessagesFilterMention,
  /// searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction,
  /// searchMessagesFilterFailedToSend, and searchMessagesFilterPinned are
  /// unsupported in this function
  final SearchMessagesFilter? filter;

  /// [minDate] If not 0, the minimum date of the messages to return
  final int minDate;

  /// [maxDate] If not 0, the maximum date of the messages to return
  final int maxDate;

  static const String constructor = 'searchMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_list': chatList?.toJson(),
        'only_in_channels': onlyInChannels,
        'query': query,
        'offset': offset,
        'limit': limit,
        'filter': filter?.toJson(),
        'min_date': minDate,
        'max_date': maxDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
