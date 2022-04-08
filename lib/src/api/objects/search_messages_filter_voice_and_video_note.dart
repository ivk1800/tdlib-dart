import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns only voice and video note messages
@immutable
class SearchMessagesFilterVoiceAndVideoNote extends SearchMessagesFilter {
  const SearchMessagesFilterVoiceAndVideoNote();

  static const String constructor = 'searchMessagesFilterVoiceAndVideoNote';

  static SearchMessagesFilterVoiceAndVideoNote? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVoiceAndVideoNote();
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
