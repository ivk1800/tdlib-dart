import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only animation messages
@immutable
class SearchMessagesFilterAnimation extends SearchMessagesFilter {
  const SearchMessagesFilterAnimation();

  static const String constructor = 'searchMessagesFilterAnimation';

  static SearchMessagesFilterAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterAnimation();
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
