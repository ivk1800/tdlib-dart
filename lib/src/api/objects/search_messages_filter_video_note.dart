import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only video note messages
@immutable
class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  const SearchMessagesFilterVideoNote();

  static const String constructor = 'searchMessagesFilterVideoNote';

  static SearchMessagesFilterVideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVideoNote();
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
