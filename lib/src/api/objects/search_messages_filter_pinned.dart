import '../tdapi.dart';

/// Returns only pinned messages
class SearchMessagesFilterPinned extends SearchMessagesFilter {
  const SearchMessagesFilterPinned();

  static const String CONSTRUCTOR = 'searchMessagesFilterPinned';

  static SearchMessagesFilterPinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterPinned();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
