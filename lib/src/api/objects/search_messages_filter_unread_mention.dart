import '../tdapi.dart';

/// Returns only messages with unread mentions of the current user, or
/// messages that are replies to their messages. When using this filter the
/// results can't be additionally filtered by a query, a message thread or by
/// the sending user
class SearchMessagesFilterUnreadMention extends SearchMessagesFilter {
  const SearchMessagesFilterUnreadMention();

  static const String CONSTRUCTOR = 'searchMessagesFilterUnreadMention';

  static SearchMessagesFilterUnreadMention? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterUnreadMention();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
