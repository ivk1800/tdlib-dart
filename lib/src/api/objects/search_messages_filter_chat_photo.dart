import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns only messages containing chat photos
class SearchMessagesFilterChatPhoto extends SearchMessagesFilter {
  const SearchMessagesFilterChatPhoto();

  static const String CONSTRUCTOR = 'searchMessagesFilterChatPhoto';

  static SearchMessagesFilterChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterChatPhoto();
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
