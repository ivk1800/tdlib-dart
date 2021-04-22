import '../tdapi.dart';

/// Returns only video messages
class SearchMessagesFilterVideo extends SearchMessagesFilter {
  const SearchMessagesFilterVideo();

  static const String CONSTRUCTOR = 'searchMessagesFilterVideo';

  static SearchMessagesFilterVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVideo();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
