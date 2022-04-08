import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A superscript rich text
@immutable
class RichTextSuperscript extends RichText {
  const RichTextSuperscript({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  static const String constructor = 'richTextSuperscript';

  static RichTextSuperscript? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextSuperscript(
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
