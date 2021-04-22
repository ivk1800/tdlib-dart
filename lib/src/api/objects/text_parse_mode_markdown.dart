import '../tdapi.dart';

/// The text uses Markdown-style formatting
class TextParseModeMarkdown extends TextParseMode {
  TextParseModeMarkdown({required this.version});

  /// [version] Version of the parser: 0 or 1 - Telegram Bot API "Markdown"
  /// parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode
  final int version;

  static const String CONSTRUCTOR = 'textParseModeMarkdown';

  static TextParseModeMarkdown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextParseModeMarkdown(version: json['version']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'version': this.version, '@type': CONSTRUCTOR};
}
