import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button that opens a Web App by calling openWebApp
@immutable
class InlineKeyboardButtonTypeWebApp extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeWebApp({
    required this.url,
  });

  /// [url] An HTTP URL to pass to openWebApp
  final String url;

  static const String constructor = 'inlineKeyboardButtonTypeWebApp';

  static InlineKeyboardButtonTypeWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeWebApp(
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
