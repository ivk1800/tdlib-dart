import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only messages with unread reactions for the current user. When
/// using this filter the results can't be additionally filtered by a query, a
/// message thread or by the sending user
@immutable
class SearchMessagesFilterUnreadReaction extends SearchMessagesFilter {
  const SearchMessagesFilterUnreadReaction();

  static const String constructor = 'searchMessagesFilterUnreadReaction';

  static SearchMessagesFilterUnreadReaction? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterUnreadReaction();
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
