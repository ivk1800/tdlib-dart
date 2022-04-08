import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only photo messages
@immutable
class SearchMessagesFilterPhoto extends SearchMessagesFilter {
  const SearchMessagesFilterPhoto();

  static const String constructor = 'searchMessagesFilterPhoto';

  static SearchMessagesFilterPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterPhoto();
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
