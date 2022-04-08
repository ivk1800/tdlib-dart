import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only messages containing chat photos
@immutable
class SearchMessagesFilterChatPhoto extends SearchMessagesFilter {
  const SearchMessagesFilterChatPhoto();

  static const String constructor = 'searchMessagesFilterChatPhoto';

  static SearchMessagesFilterChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterChatPhoto();
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
