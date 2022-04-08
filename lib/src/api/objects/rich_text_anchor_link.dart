import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A link to an anchor on the same web page
@immutable
class RichTextAnchorLink extends RichText {
  const RichTextAnchorLink({
    required this.text,
    required this.anchorName,
    required this.url,
  });

  /// [text] The link text
  final RichText text;

  /// [anchorName] The anchor name. If the name is empty, the link must bring
  /// back to top
  final String anchorName;

  /// [url] An HTTP URL, opening the anchor
  final String url;

  static const String constructor = 'richTextAnchorLink';

  static RichTextAnchorLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextAnchorLink(
      text: RichText.fromJson(json['text'])!,
      anchorName: json['anchor_name'],
      url: json['url'],
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
