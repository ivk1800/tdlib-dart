import '../tdapi.dart';

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
}
