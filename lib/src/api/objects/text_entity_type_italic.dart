import '../tdapi.dart';

/// An italic text
class TextEntityTypeItalic extends TextEntityType {
  const TextEntityTypeItalic();

  static const String CONSTRUCTOR = 'textEntityTypeItalic';

  static TextEntityTypeItalic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeItalic();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
