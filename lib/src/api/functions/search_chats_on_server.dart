import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for the specified query in the title and username of already
/// known chats via request to the server. Returns chats in the order seen in
/// the main chat list
/// Returns [Chats]
@immutable
class SearchChatsOnServer extends TdFunction {
  const SearchChatsOnServer({
    required this.query,
    required this.limit,
  });

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of chats to be returned
  final int limit;

  static const String constructor = 'searchChatsOnServer';

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
