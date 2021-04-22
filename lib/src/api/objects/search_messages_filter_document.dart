import '../tdapi.dart';

/// Returns only document messages
class SearchMessagesFilterDocument extends SearchMessagesFilter {
  const SearchMessagesFilterDocument();

  static const String CONSTRUCTOR = 'searchMessagesFilterDocument';

  static SearchMessagesFilterDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterDocument();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
