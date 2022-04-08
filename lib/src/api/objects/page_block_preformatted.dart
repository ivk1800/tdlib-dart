import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A preformatted text paragraph
@immutable
class PageBlockPreformatted extends PageBlock {
  const PageBlockPreformatted({
    required this.text,
    required this.language,
  });

  /// [text] Paragraph text
  final RichText text;

  /// [language] Programming language for which the text needs to be formatted
  final String language;

  static const String constructor = 'pageBlockPreformatted';

  static PageBlockPreformatted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockPreformatted(
      text: RichText.fromJson(json['text'])!,
      language: json['language'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'language': language,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
