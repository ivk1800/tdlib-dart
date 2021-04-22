import '../tdapi.dart';

/// Contains an HTTP URL
class HttpUrl extends TdObject {
  HttpUrl({required this.url});

  /// [url] The URL
  final String url;

  static const String CONSTRUCTOR = 'httpUrl';

  static HttpUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return HttpUrl(url: json['url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'url': this.url, '@type': CONSTRUCTOR};
}
