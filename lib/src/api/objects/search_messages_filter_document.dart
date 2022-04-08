import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only document messages
@immutable
class SearchMessagesFilterDocument extends SearchMessagesFilter {
  const SearchMessagesFilterDocument();

  static const String constructor = 'searchMessagesFilterDocument';

  static SearchMessagesFilterDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterDocument();
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
