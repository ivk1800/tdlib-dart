import '../tdapi.dart';

/// An HTTP URL
class TextEntityTypeUrl extends TextEntityType {
  const TextEntityTypeUrl();

  static const String CONSTRUCTOR = 'textEntityTypeUrl';

  static TextEntityTypeUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeUrl();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
