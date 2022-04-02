import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
