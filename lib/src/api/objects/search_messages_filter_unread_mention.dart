import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only messages with unread mentions of the current user, or
/// messages that are replies to their messages. When using this filter the
/// results can't be additionally filtered by a query, a message thread or by
/// the sending user
@immutable
class SearchMessagesFilterUnreadMention extends SearchMessagesFilter {
  const SearchMessagesFilterUnreadMention();

  static const String constructor = 'searchMessagesFilterUnreadMention';

  static SearchMessagesFilterUnreadMention? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterUnreadMention();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
