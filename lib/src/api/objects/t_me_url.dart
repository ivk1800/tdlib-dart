import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a URL linking to an internal Telegram entity
@immutable
class TMeUrl extends TdObject {
  const TMeUrl({
    required this.url,
    required this.type,
  });

  /// [url] URL
  final String url;

  /// [type] Type of the URL
  final TMeUrlType type;

  static const String constructor = 'tMeUrl';

  static TMeUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrl(
      url: json['url'] as String,
      type: TMeUrlType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
