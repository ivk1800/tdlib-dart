import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A reference to a richTexts object on the same web page
@immutable
class RichTextReference extends RichText {
  const RichTextReference({
    required this.text,
    required this.anchorName,
    required this.url,
  });

  /// [text] The text
  final RichText text;

  /// [anchorName] The name of a richTextAnchor object, which is the first
  /// element of the target richTexts object
  final String anchorName;

  /// [url] An HTTP URL, opening the reference
  final String url;

  static const String constructor = 'richTextReference';

  static RichTextReference? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextReference(
      text: RichText.fromJson(json['text'] as Map<String, dynamic>?)!,
      anchorName: json['anchor_name'] as String,
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'anchor_name': anchorName,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
