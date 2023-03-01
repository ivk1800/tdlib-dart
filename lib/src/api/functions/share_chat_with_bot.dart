import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Shares a chat after pressing a keyboardButtonTypeRequestChat button with
/// the bot
/// Returns [Ok]
@immutable
class ShareChatWithBot extends TdFunction {
  const ShareChatWithBot({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.sharedChatId,
    required this.onlyCheck,
  });

  /// [chatId] Identifier of the chat with the bot
  final int chatId;

  /// [messageId] Identifier of the message with the button
  final int messageId;

  /// [buttonId] Identifier of the button
  final int buttonId;

  /// [sharedChatId] Identifier of the shared chat
  final int sharedChatId;

  /// [onlyCheck] Pass true to check that the chat can be shared by the button
  /// instead of actually sharing it. Doesn't check bot_is_member and
  /// bot_administrator_rights restrictions.. If the bot must be a member, then
  /// all chats from getGroupsInCommon and all chats, where the user can add the
  /// bot, are suitable. In the latter case the bot will be automatically added
  /// to the chat.. If the bot must be an administrator, then all chats, where
  /// the bot already has requested rights or can be added to administrators by
  /// the user, are suitable. In the latter case the bot will be automatically
  /// granted requested rights
  final bool onlyCheck;

  static const String constructor = 'shareChatWithBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'button_id': buttonId,
        'shared_chat_id': sharedChatId,
        'only_check': onlyCheck,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
