import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an HTTPS URL of a Web App to open after keyboardButtonTypeWebApp
/// button is pressed
/// Returns [HttpUrl]
@immutable
class GetWebAppUrl extends TdFunction {
  const GetWebAppUrl({
    required this.botUserId,
    required this.url,
    this.theme,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [url] The URL from the keyboardButtonTypeWebApp button
  final String url;

  /// [theme] Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  static const String constructor = 'getWebAppUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'url': url,
        'theme': theme?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
