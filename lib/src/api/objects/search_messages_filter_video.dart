import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns only video messages
class SearchMessagesFilterVideo extends SearchMessagesFilter {
  const SearchMessagesFilterVideo();

  static const String CONSTRUCTOR = 'searchMessagesFilterVideo';

  static SearchMessagesFilterVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVideo();
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
