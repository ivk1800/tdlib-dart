import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A fixed-width rich text
@immutable
class RichTextFixed extends RichText {
  const RichTextFixed({
    required this.text,
  });

  /// [text] Text
  final RichText text;

  static const String constructor = 'richTextFixed';

  static RichTextFixed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextFixed(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
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
