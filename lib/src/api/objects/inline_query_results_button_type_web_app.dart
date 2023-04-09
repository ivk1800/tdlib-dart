import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the button that opens a Web App by calling getWebAppUrl
@immutable
class InlineQueryResultsButtonTypeWebApp extends InlineQueryResultsButtonType {
  const InlineQueryResultsButtonTypeWebApp({
    required this.url,
  });

  /// [url] An HTTP URL to pass to getWebAppUrl
  final String url;

  static const String constructor = 'inlineQueryResultsButtonTypeWebApp';

  static InlineQueryResultsButtonTypeWebApp? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultsButtonTypeWebApp(
      url: json['url'],
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
