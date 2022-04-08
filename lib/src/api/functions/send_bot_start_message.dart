import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Invites a bot to a chat (if it is not yet a member) and sends it the
/// /start command. Bots can't be invited to a private chat other than the
/// chat with the bot. Bots can't be invited to channels (although they can be
/// added as admins) and secret chats. Returns the sent message
/// Returns [Message]
@immutable
class SendBotStartMessage extends TdFunction {
  const SendBotStartMessage({
    required this.botUserId,
    required this.chatId,
    required this.parameter,
  });

  /// [botUserId] Identifier of the bot
  final int botUserId;

  /// [chatId] Identifier of the target chat
  final int chatId;

  /// [parameter] A hidden parameter sent to the bot for deep linking purposes
  /// (https://core.telegram.org/bots#deep-linking)
  final String parameter;

  static const String constructor = 'sendBotStartMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'chat_id': chatId,
        'parameter': parameter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
