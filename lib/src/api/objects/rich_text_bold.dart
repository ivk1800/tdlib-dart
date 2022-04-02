import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A bold rich text
class RichTextBold extends RichText {
  RichTextBold({required this.text});

  /// [text] Text
  final RichText text;

  static const String CONSTRUCTOR = 'richTextBold';

  static RichTextBold? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextBold(text: RichText.fromJson(json['text'])!);
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
