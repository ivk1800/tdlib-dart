import '../tdapi.dart';

/// The text uses HTML-style formatting. The same as Telegram Bot API "HTML"
/// parse mode
class TextParseModeHTML extends TextParseMode {
  const TextParseModeHTML();

  static const String CONSTRUCTOR = 'textParseModeHTML';

  static TextParseModeHTML? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextParseModeHTML();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
