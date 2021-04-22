import '../tdapi.dart';

/// A preformatted text paragraph
class PageBlockPreformatted extends PageBlock {
  PageBlockPreformatted({required this.text, required this.language});

  /// [text] Paragraph text
  final RichText text;

  /// [language] Programming language for which the text should be formatted
  final String language;

  static const String CONSTRUCTOR = 'pageBlockPreformatted';

  static PageBlockPreformatted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockPreformatted(
        text: RichText.fromJson(json['text'])!, language: json['language']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text.toJson(),
        'language': this.language,
        '@type': CONSTRUCTOR
      };
}
