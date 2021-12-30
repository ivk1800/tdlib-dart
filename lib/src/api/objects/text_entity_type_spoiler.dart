import '../tdapi.dart';

/// A spoiler text. Not supported in secret chats
class TextEntityTypeSpoiler extends TextEntityType {
  const TextEntityTypeSpoiler();

  static const String CONSTRUCTOR = 'textEntityTypeSpoiler';

  static TextEntityTypeSpoiler? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeSpoiler();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
