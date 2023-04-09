import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an HTTPS URL of a Web App to open after a link of the type
/// internalLinkTypeWebApp is clicked
/// Returns [HttpUrl]
@immutable
class GetWebAppLinkUrl extends TdFunction {
  const GetWebAppLinkUrl({
    required this.chatId,
    required this.botUserId,
    required this.webAppShortName,
    required this.startParameter,
    this.theme,
    required this.applicationName,
    required this.allowWriteAccess,
  });

  /// [chatId] Identifier of the chat in which the link was clicked; pass 0 if
  /// none
  final int chatId;

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [webAppShortName] Short name of the Web App
  final String webAppShortName;

  /// [startParameter] Start parameter from internalLinkTypeWebApp
  final String startParameter;

  /// [theme] Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// [applicationName] Short name of the application; 0-64 English letters,
  /// digits, and underscores
  final String applicationName;

  /// [allowWriteAccess] Pass true if the current user allowed the bot to send
  /// them messages
  final bool allowWriteAccess;

  static const String constructor = 'getWebAppLinkUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'bot_user_id': botUserId,
        'web_app_short_name': webAppShortName,
        'start_parameter': startParameter,
        'theme': theme?.toJson(),
        'application_name': applicationName,
        'allow_write_access': allowWriteAccess,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
