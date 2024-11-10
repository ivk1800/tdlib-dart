import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the main Web App of a bot
@immutable
class MainWebApp extends TdObject {
  const MainWebApp({
    required this.url,
    required this.isCompact,
  });

  /// [url] URL of the Web App to open
  final String url;

  /// [isCompact] True, if the Web App must always be opened in the compact mode
  /// instead of the full-size mode
  final bool isCompact;

  static const String constructor = 'mainWebApp';

  static MainWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MainWebApp(
      url: json['url'] as String,
      isCompact: json['is_compact'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'is_compact': isCompact,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
