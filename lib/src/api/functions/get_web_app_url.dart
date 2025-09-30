import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an HTTPS URL of a Web App to open from the side menu, a
/// keyboardButtonTypeWebApp button, or an inlineQueryResultsButtonTypeWebApp
/// button
/// Returns [HttpUrl]
@immutable
class GetWebAppUrl extends TdFunction {
  const GetWebAppUrl({
    required this.botUserId,
    required this.url,
    required this.parameters,
  });

  /// [botUserId] Identifier of the target bot. If the bot is restricted for the
  /// current user, then show an error instead of calling the method
  final int botUserId;

  /// [url] The URL from a keyboardButtonTypeWebApp button,
  /// inlineQueryResultsButtonTypeWebApp button, or an empty string when the bot
  /// is opened from the side menu
  final String url;

  /// [parameters] Parameters to use to open the Web App
  final WebAppOpenParameters parameters;

  static const String constructor = 'getWebAppUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'url': url,
    'parameters': parameters.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
