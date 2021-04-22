import '../tdapi.dart';

/// Returns only photo messages
class SearchMessagesFilterPhoto extends SearchMessagesFilter {
  const SearchMessagesFilterPhoto();

  static const String CONSTRUCTOR = 'searchMessagesFilterPhoto';

  static SearchMessagesFilterPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterPhoto();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
