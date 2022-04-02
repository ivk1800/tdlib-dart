import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A rich text URL link
class RichTextUrl extends RichText {
  RichTextUrl({required this.text, required this.url, required this.isCached});

  /// [text] Text
  final RichText text;

  /// [url] URL
  final String url;

  /// [isCached] True, if the URL has cached instant view server-side
  final bool isCached;

  static const String CONSTRUCTOR = 'richTextUrl';

  static RichTextUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextUrl(
        text: RichText.fromJson(json['text'])!,
        url: json['url'],
        isCached: json['is_cached']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text.toJson(),
        'url': this.url,
        'is_cached': this.isCached,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
