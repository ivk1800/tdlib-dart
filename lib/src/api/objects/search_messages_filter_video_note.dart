import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns only video note messages
class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  const SearchMessagesFilterVideoNote();

  static const String CONSTRUCTOR = 'searchMessagesFilterVideoNote';

  static SearchMessagesFilterVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVideoNote();
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
