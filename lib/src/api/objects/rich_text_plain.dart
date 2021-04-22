import '../tdapi.dart';

/// A plain text
class RichTextPlain extends RichText {
  RichTextPlain({required this.text});

  /// [text] Text
  final String text;

  static const String CONSTRUCTOR = 'richTextPlain';

  static RichTextPlain? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextPlain(text: json['text']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'text': this.text, '@type': CONSTRUCTOR};
}
