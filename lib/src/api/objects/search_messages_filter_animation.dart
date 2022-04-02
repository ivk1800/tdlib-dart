import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
