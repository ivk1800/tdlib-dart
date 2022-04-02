import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns only voice note messages
class SearchMessagesFilterVoiceNote extends SearchMessagesFilter {
  const SearchMessagesFilterVoiceNote();

  static const String CONSTRUCTOR = 'searchMessagesFilterVoiceNote';

  static SearchMessagesFilterVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SearchMessagesFilterVoiceNote();
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
