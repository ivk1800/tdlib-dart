import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for a specified query in the first name, last name and usernames
/// of the members of a specified chat. Requires administrator rights if the
/// chat is a channel
/// Returns [ChatMembers]
@immutable
class SearchChatMembers extends TdFunction {
  const SearchChatMembers({
    required this.chatId,
    required this.query,
    required this.limit,
    this.filter,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of users to be returned; up to 200
  final int limit;

  /// [filter] The type of users to search for; pass null to search among all
  /// chat members
  final ChatMembersFilter? filter;

  static const String constructor = 'searchChatMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'query': query,
        'limit': limit,
        'filter': filter?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
