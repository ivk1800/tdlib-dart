import '../tdapi.dart';

/// Returns only messages with mentions of the current user, or messages that
/// are replies to their messages
class SearchMessagesFilterMention extends SearchMessagesFilter {
  const SearchMessagesFilterMention();

  static const String CONSTRUCTOR = 'searchMessagesFilterMention';

  static SearchMessagesFilterMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterMention();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
