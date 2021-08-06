import '../tdapi.dart';

/// Searches for messages with given words in the chat. Returns the results in
/// reverse chronological order, i.e. in order of decreasing message_id.
/// Cannot be used in secret chats with a non-empty query.
/// (searchSecretMessages should be used instead), or without an enabled
/// message database. For optimal performance the number of returned messages
/// is chosen by the library
/// Returns [Messages]
class SearchChatMessages extends TdFunction {
  SearchChatMessages(
      {required this.chatId,
      required this.query,
      this.sender,
      required this.fromMessageId,
      required this.offset,
      required this.limit,
      required this.filter,
      required this.messageThreadId});

  /// [chatId] Identifier of the chat in which to search messages
  final int chatId;

  /// [query] Query to search for
  final String query;

  /// [sender] If not null, only messages sent by the specified sender will be
  /// returned. Not supported in secret chats
  final MessageSender? sender;

  /// [fromMessageId] Identifier of the message starting from which history must
  /// be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// [offset] Specify 0 to get results from exactly the from_message_id or a
  /// negative offset to get the specified message and some newer messages
  final int offset;

  /// [limit] The maximum number of messages to be returned; must be positive
  /// and can't be greater than 100. If the offset is negative, the limit must
  /// be greater than -offset. Fewer messages may be returned than specified by
  /// the limit, even if the end of the message history has not been reached
  final int limit;

  /// [filter] Filter for message content in the search results
  final SearchMessagesFilter filter;

  /// [messageThreadId] If not 0, only messages in the specified thread will be
  /// returned; supergroups only
  final int messageThreadId;

  static const String CONSTRUCTOR = 'searchChatMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'query': this.query,
        'sender': this.sender?.toJson(),
        'from_message_id': this.fromMessageId,
        'offset': this.offset,
        'limit': this.limit,
        'filter': this.filter.toJson(),
        'message_thread_id': this.messageThreadId,
        '@type': CONSTRUCTOR
      };
}
