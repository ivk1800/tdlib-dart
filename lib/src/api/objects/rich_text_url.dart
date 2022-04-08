import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rich text URL link
@immutable
class RichTextUrl extends RichText {
  const RichTextUrl({
    required this.text,
    required this.url,
    required this.isCached,
  });

  /// [text] Text
  final RichText text;

  /// [url] URL
  final String url;

  /// [isCached] True, if the URL has cached instant view server-side
  final bool isCached;

  static const String constructor = 'richTextUrl';

  static RichTextUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextUrl(
      text: RichText.fromJson(json['text'])!,
      url: json['url'],
      isCached: json['is_cached'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'url': url,
        'is_cached': isCached,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
