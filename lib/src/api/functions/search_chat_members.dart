import '../tdapi.dart';

/// Searches for a specified query in the first name, last name and username
/// of the members of a specified chat. Requires administrator rights in
/// channels
/// Returns [ChatMembers]
class SearchChatMembers extends TdFunction {
  SearchChatMembers(
      {required this.chatId,
      required this.query,
      required this.limit,
      this.filter});

  /// [chatId] Chat identifier
  final int chatId;

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of users to be returned; up to 200
  final int limit;

  /// [filter] The type of users to search for; pass null to search among all
  /// chat members
  final ChatMembersFilter? filter;

  static const String CONSTRUCTOR = 'searchChatMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'query': this.query,
        'limit': this.limit,
        'filter': this.filter?.toJson(),
        '@type': CONSTRUCTOR
      };
}
