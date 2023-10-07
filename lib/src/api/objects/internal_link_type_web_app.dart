import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a Web App. Call searchPublicChat with the given bot
/// username, check that the user is a bot, then call searchWebApp with the
/// received bot and the given web_app_short_name. Process received
/// foundWebApp by showing a confirmation dialog if needed. If the bot can be
/// added to attachment or side menu, but isn't added yet, then show a
/// disclaimer about Mini Apps being a third-party apps instead of the dialog
/// and ask the user to accept their Terms of service. If the user accept the
/// terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to
/// add the bot. Then, call getWebAppLinkUrl and open the returned URL as a
/// Web App
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
      botUsername: json['bot_username'] as String,
      webAppShortName: json['web_app_short_name'] as String,
      startParameter: json['start_parameter'] as String,
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
