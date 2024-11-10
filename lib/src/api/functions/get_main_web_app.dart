import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information needed to open the main Web App of a bot
/// Returns [MainWebApp]
@immutable
class GetMainWebApp extends TdFunction {
  const GetMainWebApp({
    required this.chatId,
    required this.botUserId,
    required this.startParameter,
    this.theme,
    required this.applicationName,
  });

  /// [chatId] Identifier of the chat in which the Web App is opened; pass 0 if
  /// none
  final int chatId;

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [startParameter] Start parameter from internalLinkTypeMainWebApp
  final String startParameter;

  /// [theme] Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// [applicationName] Short name of the current application; 0-64 English
  /// letters, digits, and underscores
  final String applicationName;

  static const String constructor = 'getMainWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'bot_user_id': botUserId,
        'start_parameter': startParameter,
        'theme': theme?.toJson(),
        'application_name': applicationName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
