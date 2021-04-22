import '../tdapi.dart';

/// Describes the way the text should be parsed for TextEntities
abstract class TextParseMode extends TdObject {
  const TextParseMode();

  static const String CONSTRUCTOR = 'textParseMode';

  /// Inherited by:
  /// [TextParseModeMarkdown]
  /// [TextParseModeHTML]
  static TextParseMode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case TextParseModeMarkdown.CONSTRUCTOR:
        return TextParseModeMarkdown.fromJson(json);
      case TextParseModeHTML.CONSTRUCTOR:
        return TextParseModeHTML.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
