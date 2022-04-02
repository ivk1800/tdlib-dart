import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An italicized rich text
class RichTextItalic extends RichText {
  RichTextItalic({required this.text});

  /// [text] Text
  final RichText text;

  static const String CONSTRUCTOR = 'richTextItalic';

  static RichTextItalic? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextItalic(text: RichText.fromJson(json['text'])!);
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
