import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns only voice and video note messages
class SearchMessagesFilterVoiceAndVideoNote extends SearchMessagesFilter {
  const SearchMessagesFilterVoiceAndVideoNote();

  static const String CONSTRUCTOR = 'searchMessagesFilterVoiceAndVideoNote';

  static SearchMessagesFilterVoiceAndVideoNote? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVoiceAndVideoNote();
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
