import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the main Web App of a bot
@immutable
class MainWebApp extends TdObject {
  const MainWebApp({required this.url, required this.mode});

  /// [url] URL of the Web App to open
  final String url;

  /// [mode] The mode in which the Web App must be opened
  final WebAppOpenMode mode;

  static const String constructor = 'mainWebApp';

  static MainWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MainWebApp(
      url: json['url'] as String,
      mode: WebAppOpenMode.fromJson(json['mode'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'mode': mode.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
