import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of t.me URLs
@immutable
class TMeUrls extends TdObject {
  const TMeUrls({
    required this.urls,
  });

  /// [urls] List of URLs
  final List<TMeUrl> urls;

  static const String constructor = 'tMeUrls';

  static TMeUrls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrls(
      urls: List<TMeUrl>.from(((json['urls'] as List<dynamic>?) ?? <dynamic>[])
          .map((item) => TMeUrl.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'urls': urls.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
