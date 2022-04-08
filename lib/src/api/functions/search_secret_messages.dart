import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for messages in secret chats. Returns the results in reverse
/// chronological order. For optimal performance, the number of returned
/// messages is chosen by TDLib
/// Returns [FoundMessages]
@immutable
class SearchSecretMessages extends TdFunction {
  const SearchSecretMessages({
    required this.chatId,
    required this.query,
    required this.offset,
    required this.limit,
    this.filter,
  });

  /// [chatId] Identifier of the chat in which to search. Specify 0 to search in
  /// all secret chats
  final int chatId;

  /// [query] Query to search for. If empty, searchChatMessages must be used
  /// instead
  final String query;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get first chunk of results
  final String offset;

  /// [limit] The maximum number of messages to be returned; up to 100. For
  /// optimal performance, the number of returned messages is chosen by TDLib
  /// and can be smaller than the specified limit
  final int limit;

  /// [filter] Additional filter for messages to search; pass null to search for
  /// all messages
  final SearchMessagesFilter? filter;

  static const String constructor = 'searchSecretMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'query': query,
        'offset': offset,
        'limit': limit,
        'filter': filter?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
