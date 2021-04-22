import '../tdapi.dart';

/// A subscript rich text
class RichTextSubscript extends RichText {
  RichTextSubscript({required this.text});

  /// [text] Text
  final RichText text;

  static const String CONSTRUCTOR = 'richTextSubscript';

  static RichTextSubscript? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextSubscript(text: RichText.fromJson(json['text'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text.toJson(), '@type': CONSTRUCTOR};
}
