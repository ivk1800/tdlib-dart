import '../tdapi.dart';

/// An underlined text
class TextEntityTypeUnderline extends TextEntityType {
  const TextEntityTypeUnderline();

  static const String CONSTRUCTOR = 'textEntityTypeUnderline';

  static TextEntityTypeUnderline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeUnderline();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
