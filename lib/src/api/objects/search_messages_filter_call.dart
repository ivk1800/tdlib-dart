import '../tdapi.dart';

/// Returns only call messages
class SearchMessagesFilterCall extends SearchMessagesFilter {
  const SearchMessagesFilterCall();

  static const String CONSTRUCTOR = 'searchMessagesFilterCall';

  static SearchMessagesFilterCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterCall();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
