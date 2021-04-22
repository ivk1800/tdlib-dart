import '../tdapi.dart';

/// Searches for the specified query in the title and username of already
/// known chats via request to the server. Returns chats in the order seen in
/// the main chat list
/// Returns [Chats]
class SearchChatsOnServer extends TdFunction {
  SearchChatsOnServer({required this.query, required this.limit});

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of chats to be returned
  final int limit;

  static const String CONSTRUCTOR = 'searchChatsOnServer';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'query': this.query, 'limit': this.limit, '@type': CONSTRUCTOR};
}
