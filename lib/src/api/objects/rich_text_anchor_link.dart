import '../tdapi.dart';

/// A link to an anchor on the same web page
class RichTextAnchorLink extends RichText {
  RichTextAnchorLink(
      {required this.text, required this.anchorName, required this.url});

  /// [text] The link text
  final RichText text;

  /// [anchorName] The anchor name. If the name is empty, the link should bring
  /// back to top
  final String anchorName;

  /// [url] An HTTP URL, opening the anchor
  final String url;

  static const String CONSTRUCTOR = 'richTextAnchorLink';

  static RichTextAnchorLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextAnchorLink(
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
}
