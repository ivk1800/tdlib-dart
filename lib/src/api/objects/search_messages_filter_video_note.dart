import '../tdapi.dart';

/// Returns only video note messages
class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  const SearchMessagesFilterVideoNote();

  static const String CONSTRUCTOR = 'searchMessagesFilterVideoNote';

  static SearchMessagesFilterVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVideoNote();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
