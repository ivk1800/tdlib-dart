import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns only messages containing URLs
class SearchMessagesFilterUrl extends SearchMessagesFilter {
  const SearchMessagesFilterUrl();

  static const String CONSTRUCTOR = 'searchMessagesFilterUrl';

  static SearchMessagesFilterUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterUrl();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
