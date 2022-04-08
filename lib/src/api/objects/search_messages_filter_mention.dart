import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only messages with mentions of the current user, or messages that
/// are replies to their messages
@immutable
class SearchMessagesFilterMention extends SearchMessagesFilter {
  const SearchMessagesFilterMention();

  static const String constructor = 'searchMessagesFilterMention';

  static SearchMessagesFilterMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterMention();
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
