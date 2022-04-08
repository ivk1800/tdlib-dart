import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A strikethrough rich text
@immutable
class RichTextStrikethrough extends RichText {
  const RichTextStrikethrough({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  static const String constructor = 'richTextStrikethrough';

  static RichTextStrikethrough? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextStrikethrough(
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
