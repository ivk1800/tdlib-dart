import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An underlined rich text
@immutable
class RichTextUnderline extends RichText {
  const RichTextUnderline({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  static const String constructor = 'richTextUnderline';

  static RichTextUnderline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextUnderline(
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
