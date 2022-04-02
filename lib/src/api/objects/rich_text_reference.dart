import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A reference to a richTexts object on the same web page
class RichTextReference extends RichText {
  RichTextReference(
      {required this.text, required this.anchorName, required this.url});

  /// [text] The text
  final RichText text;

  /// [anchorName] The name of a richTextAnchor object, which is the first
  /// element of the target richTexts object
  final String anchorName;

  /// [url] An HTTP URL, opening the reference
  final String url;

  static const String CONSTRUCTOR = 'richTextReference';

  static RichTextReference? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextReference(
        text: RichText.fromJson(json['text'])!,
        anchorName: json['anchor_name'],
        url: json['url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text.toJson(),
        'anchor_name': this.anchorName,
        'url': this.url,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
