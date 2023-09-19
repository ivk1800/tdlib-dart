import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an HTTPS URL of a Web App to open from the side menu, a
/// keyboardButtonTypeWebApp button, an inlineQueryResultsButtonTypeWebApp
/// button, or an internalLinkTypeSideMenuBot link
/// Returns [HttpUrl]
@immutable
class GetWebAppUrl extends TdFunction {
  const GetWebAppUrl({
    required this.botUserId,
    required this.url,
    this.theme,
    required this.applicationName,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [url] The URL from a keyboardButtonTypeWebApp button,
  /// inlineQueryResultsButtonTypeWebApp button, an internalLinkTypeSideMenuBot
  /// link, or an empty when the bot is opened from the side menu
  final String url;

  /// [theme] Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// [applicationName] Short name of the application; 0-64 English letters,
  /// digits, and underscores
  final String applicationName;

  static const String constructor = 'getWebAppUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'url': url,
        'theme': theme?.toJson(),
        'application_name': applicationName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
