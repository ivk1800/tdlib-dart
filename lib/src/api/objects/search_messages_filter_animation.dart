import '../tdapi.dart';

/// Returns only animation messages
class SearchMessagesFilterAnimation extends SearchMessagesFilter {
  const SearchMessagesFilterAnimation();

  static const String CONSTRUCTOR = 'searchMessagesFilterAnimation';

  static SearchMessagesFilterAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterAnimation();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
