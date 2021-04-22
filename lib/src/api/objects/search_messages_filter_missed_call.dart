import '../tdapi.dart';

/// Returns only incoming call messages with missed/declined discard reasons
class SearchMessagesFilterMissedCall extends SearchMessagesFilter {
  const SearchMessagesFilterMissedCall();

  static const String CONSTRUCTOR = 'searchMessagesFilterMissedCall';

  static SearchMessagesFilterMissedCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterMissedCall();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
