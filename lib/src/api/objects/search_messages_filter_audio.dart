import '../tdapi.dart';

/// Returns only audio messages
class SearchMessagesFilterAudio extends SearchMessagesFilter {
  const SearchMessagesFilterAudio();

  static const String CONSTRUCTOR = 'searchMessagesFilterAudio';

  static SearchMessagesFilterAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterAudio();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
