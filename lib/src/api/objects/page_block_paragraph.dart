import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A text paragraph
@immutable
class PageBlockParagraph extends PageBlock {
  const PageBlockParagraph({
    required this.text,
  });

  /// [text] Paragraph text
  final RichText text;

  static const String constructor = 'pageBlockParagraph';

  static PageBlockParagraph? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockParagraph(
      text: RichText.fromJson(json['text'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
