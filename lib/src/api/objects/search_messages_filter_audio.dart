import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only audio messages
@immutable
class SearchMessagesFilterAudio extends SearchMessagesFilter {
  const SearchMessagesFilterAudio();

  static const String constructor = 'searchMessagesFilterAudio';

  static SearchMessagesFilterAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterAudio();
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
