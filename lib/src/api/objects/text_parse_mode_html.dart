import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
