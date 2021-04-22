import '../tdapi.dart';

/// Searches for messages in secret chats. Returns the results in reverse
/// chronological order. For optimal performance the number of returned
/// messages is chosen by the library
/// Returns [FoundMessages]
class SearchSecretMessages extends TdFunction {
  SearchSecretMessages(
      {required this.chatId,
      required this.query,
      required this.offset,
      required this.limit,
      required this.filter});

  /// [chatId] Identifier of the chat in which to search. Specify 0 to search in
  /// all secret chats
  final int chatId;

  /// [query] Query to search for. If empty, searchChatMessages should be used
  /// instead
  final String query;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get first chunk of results
  final String offset;

  /// [limit] The maximum number of messages to be returned; up to 100. Fewer
  /// messages may be returned than specified by the limit, even if the end of
  /// the message history has not been reached
  final int limit;

  /// [filter] A filter for message content in the search results
  final SearchMessagesFilter filter;

  static const String CONSTRUCTOR = 'searchSecretMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'query': this.query,
        'offset': this.offset,
        'limit': this.limit,
        'filter': this.filter.toJson(),
        '@type': CONSTRUCTOR
      };
}
