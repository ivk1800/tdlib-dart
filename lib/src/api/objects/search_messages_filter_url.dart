import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only messages containing URLs
@immutable
class SearchMessagesFilterUrl extends SearchMessagesFilter {
  const SearchMessagesFilterUrl();

  static const String constructor = 'searchMessagesFilterUrl';

  static SearchMessagesFilterUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterUrl();
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
