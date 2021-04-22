import '../tdapi.dart';

/// A superscript rich text
class RichTextSuperscript extends RichText {
  RichTextSuperscript({required this.text});

  /// [text] Text
  final RichText text;

  static const String CONSTRUCTOR = 'richTextSuperscript';

  static RichTextSuperscript? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextSuperscript(text: RichText.fromJson(json['text'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text.toJson(), '@type': CONSTRUCTOR};
}
