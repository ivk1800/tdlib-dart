import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns all found messages, no filter is applied
@immutable
class SearchMessagesFilterEmpty extends SearchMessagesFilter {
  const SearchMessagesFilterEmpty();

  static const String constructor = 'searchMessagesFilterEmpty';

  static SearchMessagesFilterEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterEmpty();
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
