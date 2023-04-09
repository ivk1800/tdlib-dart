import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a Web App. Call searchPublicChat with the given bot
/// username, check that the user is a bot, then call searchWebApp with the
/// received bot and the given web_app_short_name. Process received
/// foundWebApp by showing a confirmation dialog if needed, then calling
/// getWebAppLinkUrl and opening the returned URL
@immutable
class InternalLinkTypeWebApp extends InternalLinkType {
  const InternalLinkTypeWebApp({
    required this.botUsername,
    required this.webAppShortName,
    required this.startParameter,
  });

  /// [botUsername] Username of the bot that owns the Web App
  final String botUsername;

  /// [webAppShortName] Short name of the Web App
  final String webAppShortName;

  /// [startParameter] Start parameter to be passed to getWebAppLinkUrl
  final String startParameter;

  static const String constructor = 'internalLinkTypeWebApp';

  static InternalLinkTypeWebApp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeWebApp(
      botUsername: json['bot_username'],
      webAppShortName: json['web_app_short_name'],
      startParameter: json['start_parameter'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_username': botUsername,
        'web_app_short_name': webAppShortName,
        'start_parameter': startParameter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
