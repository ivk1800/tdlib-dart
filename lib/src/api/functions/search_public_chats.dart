import '../tdapi.dart';

/// Searches public chats by looking for specified query in their username and
/// title. Currently only private chats, supergroups and channels can be
/// public. Returns a meaningful number of results. Returns nothing if the
/// length of the searched username prefix is less than 5. Excludes private
/// chats with contacts and chats from the chat list from the results
/// Returns [Chats]
class SearchPublicChats extends TdFunction {
  SearchPublicChats({required this.query});

  /// [query] Query to search for
  final String query;

  static const String CONSTRUCTOR = 'searchPublicChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'query': this.query, '@type': CONSTRUCTOR};
}
