import '../tdapi.dart';

/// A text description shown instead of a raw URL
class TextEntityTypeTextUrl extends TextEntityType {
  TextEntityTypeTextUrl({required this.url});

  /// [url] HTTP or tg:// URL to be opened when the link is clicked
  final String url;

  static const String CONSTRUCTOR = 'textEntityTypeTextUrl';

  static TextEntityTypeTextUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntityTypeTextUrl(url: json['url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'url': this.url, '@type': CONSTRUCTOR};
}
