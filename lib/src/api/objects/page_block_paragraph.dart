import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A text paragraph
class PageBlockParagraph extends PageBlock {
  PageBlockParagraph({required this.text});

  /// [text] Paragraph text
  final RichText text;

  static const String CONSTRUCTOR = 'pageBlockParagraph';

  static PageBlockParagraph? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockParagraph(text: RichText.fromJson(json['text'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
