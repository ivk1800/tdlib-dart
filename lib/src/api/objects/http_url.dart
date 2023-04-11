import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains an HTTP URL
@immutable
class HttpUrl extends TdObject {
  const HttpUrl({
    required this.url,
  });

  /// [url] The URL
  final String url;

  static const String constructor = 'httpUrl';

  static HttpUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return HttpUrl(
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
