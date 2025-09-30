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
    required this.parameters,
  });

  /// [chatId] Identifier of the chat in which the Web App is opened; pass 0 if
  /// none
  final int chatId;

  /// [botUserId] Identifier of the target bot. If the bot is restricted for the
  /// current user, then show an error instead of calling the method
  final int botUserId;

  /// [startParameter] Start parameter from internalLinkTypeMainWebApp
  final String startParameter;

  /// [parameters] Parameters to use to open the Web App
  final WebAppOpenParameters parameters;

  static const String constructor = 'getMainWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'bot_user_id': botUserId,
    'start_parameter': startParameter,
    'parameters': parameters.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
