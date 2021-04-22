import '../tdapi.dart';

/// Returns all found messages, no filter is applied
class SearchMessagesFilterEmpty extends SearchMessagesFilter {
  const SearchMessagesFilterEmpty();

  static const String CONSTRUCTOR = 'searchMessagesFilterEmpty';

  static SearchMessagesFilterEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterEmpty();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
