import '../tdapi.dart';

/// A marked rich text
class RichTextMarked extends RichText {
  RichTextMarked({required this.text});

  /// [text] Text
  final RichText text;

  static const String CONSTRUCTOR = 'richTextMarked';

  static RichTextMarked? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextMarked(text: RichText.fromJson(json['text'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text.toJson(), '@type': CONSTRUCTOR};
}
