import '../tdapi.dart';

/// Searches for messages in all chats except secret chats. Returns the
/// results in reverse chronological order (i.e., in order of decreasing
/// (date, chat_id, message_id)).. For optimal performance, the number of
/// returned messages is chosen by TDLib and can be smaller than the specified
/// limit
/// Returns [Messages]
class SearchMessages extends TdFunction {
  SearchMessages(
      {this.chatList,
      required this.query,
      required this.offsetDate,
      required this.offsetChatId,
      required this.offsetMessageId,
      required this.limit,
      this.filter,
      required this.minDate,
      required this.maxDate});

  /// [chatList] Chat list in which to search messages; pass null to search in
  /// all chats regardless of their chat list. Only Main and Archive chat lists
  /// are supported
  final ChatList? chatList;

  /// [query] Query to search for
  final String query;

  /// [offsetDate] The date of the message starting from which the results need
  /// to be fetched. Use 0 or any date in the future to get results from the
  /// last message
  final int offsetDate;

  /// [offsetChatId] The chat identifier of the last found message, or 0 for the
  /// first request
  final int offsetChatId;

  /// [offsetMessageId] The message identifier of the last found message, or 0
  /// for the first request
  final int offsetMessageId;

  /// [limit] The maximum number of messages to be returned; up to 100. For
  /// optimal performance, the number of returned messages is chosen by TDLib
  /// and can be smaller than the specified limit
  final int limit;

  /// [filter] Additional filter for messages to search; pass null to search for
  /// all messages. Filters searchMessagesFilterCall,
  /// searchMessagesFilterMissedCall, searchMessagesFilterMention,
  /// searchMessagesFilterUnreadMention, searchMessagesFilterFailedToSend and
  /// searchMessagesFilterPinned are unsupported in this function
  final SearchMessagesFilter? filter;

  /// [minDate] If not 0, the minimum date of the messages to return
  final int minDate;

  /// [maxDate] If not 0, the maximum date of the messages to return
  final int maxDate;

  static const String CONSTRUCTOR = 'searchMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_list': this.chatList?.toJson(),
        'query': this.query,
        'offset_date': this.offsetDate,
        'offset_chat_id': this.offsetChatId,
        'offset_message_id': this.offsetMessageId,
        'limit': this.limit,
        'filter': this.filter?.toJson(),
        'min_date': this.minDate,
        'max_date': this.maxDate,
        '@type': CONSTRUCTOR
      };
}
