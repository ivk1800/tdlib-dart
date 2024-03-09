import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for messages with given words in the chat. Returns the results in
/// reverse chronological order, i.e. in order of decreasing message_id.
/// Cannot be used in secret chats with a non-empty query
/// (searchSecretMessages must be used instead), or without an enabled message
/// database. For optimal performance, the number of returned messages is
/// chosen by TDLib and can be smaller than the specified limit. A combination
/// of query, sender_id, filter and message_thread_id search criteria is
/// expected to be supported, only if it is required for Telegram official
/// application implementation
/// Returns [FoundChatMessages]
@immutable
class SearchChatMessages extends TdFunction {
  const SearchChatMessages({
    required this.chatId,
    required this.query,
    this.senderId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
    this.filter,
    required this.messageThreadId,
    required this.savedMessagesTopicId,
  });

  /// [chatId] Identifier of the chat in which to search messages
  final int chatId;

  /// [query] Query to search for
  final String query;

  /// [senderId] Identifier of the sender of messages to search for; pass null
  /// to search for messages from any sender. Not supported in secret chats
  final MessageSender? senderId;

  /// [fromMessageId] Identifier of the message starting from which history must
  /// be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// [offset] Specify 0 to get results from exactly the message from_message_id
  /// or a negative offset to get the specified message and some newer messages
  final int offset;

  /// [limit] The maximum number of messages to be returned; must be positive
  /// and can't be greater than 100. If the offset is negative, the limit must
  /// be greater than -offset. For optimal performance, the number of returned
  /// messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  /// [filter] Additional filter for messages to search; pass null to search for
  /// all messages
  final SearchMessagesFilter? filter;

  /// [messageThreadId] If not 0, only messages in the specified thread will be
  /// returned; supergroups only
  final int messageThreadId;

  /// [savedMessagesTopicId] If not 0, only messages in the specified Saved
  /// Messages topic will be returned; pass 0 to return all messages, or for
  /// chats other than Saved Messages
  final int savedMessagesTopicId;

  static const String constructor = 'searchChatMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'query': query,
        'sender_id': senderId?.toJson(),
        'from_message_id': fromMessageId,
        'offset': offset,
        'limit': limit,
        'filter': filter?.toJson(),
        'message_thread_id': messageThreadId,
        'saved_messages_topic_id': savedMessagesTopicId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
