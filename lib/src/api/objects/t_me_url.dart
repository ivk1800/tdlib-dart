import '../tdapi.dart';

/// Represents a URL linking to an internal Telegram entity
class TMeUrl extends TdObject {
  TMeUrl({required this.url, required this.type});

  /// [url] URL
  final String url;

  /// [type] Type of the URL
  final TMeUrlType type;

  static const String CONSTRUCTOR = 'tMeUrl';

  static TMeUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrl(url: json['url'], type: TMeUrlType.fromJson(json['type'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'url': this.url, 'type': this.type.toJson(), '@type': CONSTRUCTOR};
}
