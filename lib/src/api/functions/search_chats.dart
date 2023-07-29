import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for the specified query in the title and username of already
/// known chats; this is an offline request. Returns chats in the order seen
/// in the main chat list
/// Returns [Chats]
@immutable
class SearchChats extends TdFunction {
  const SearchChats({
    required this.query,
    required this.limit,
  });

  /// [query] Query to search for. If the query is empty, returns up to 50
  /// recently found chats
  final String query;

  /// [limit] The maximum number of chats to be returned
  final int limit;

  static const String constructor = 'searchChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
