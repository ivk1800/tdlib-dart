import '../tdapi.dart';

/// Returns information about the recent locations of chat members that were
/// sent to the chat. Returns up to 1 location message per user
/// Returns [Messages]
class SearchChatRecentLocationMessages extends TdFunction {
  SearchChatRecentLocationMessages({required this.chatId, required this.limit});

  /// [chatId] Chat identifier
  final int chatId;

  /// [limit] The maximum number of messages to be returned
  final int limit;

  static const String CONSTRUCTOR = 'searchChatRecentLocationMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'limit': this.limit, '@type': CONSTRUCTOR};
}
