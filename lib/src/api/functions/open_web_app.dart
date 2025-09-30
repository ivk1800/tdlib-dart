import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that a Web App is being opened from the attachment menu, a
/// botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an
/// inlineKeyboardButtonTypeWebApp button. For each bot, a confirmation alert
/// about data sent to the bot must be shown once
/// Returns [WebAppInfo]
@immutable
class OpenWebApp extends TdFunction {
  const OpenWebApp({
    required this.chatId,
    required this.botUserId,
    required this.url,
    required this.messageThreadId,
    required this.directMessagesChatTopicId,
    this.replyTo,
    required this.parameters,
  });

  /// [chatId] Identifier of the chat in which the Web App is opened. The Web
  /// App can't be opened in secret chats
  final int chatId;

  /// [botUserId] Identifier of the bot, providing the Web App. If the bot is
  /// restricted for the current user, then show an error instead of calling the
  /// method
  final int botUserId;

  /// [url] The URL from an inlineKeyboardButtonTypeWebApp button, a
  /// botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an
  /// empty string otherwise
  final String url;

  /// [messageThreadId] If not 0, the message thread identifier to which the
  /// message will be sent
  final int messageThreadId;

  /// [directMessagesChatTopicId] If not 0, unique identifier of the topic of
  /// channel direct messages chat to which the message will be sent
  final int directMessagesChatTopicId;

  /// [replyTo] Information about the message or story to be replied in the
  /// message sent by the Web App; pass null if none
  final InputMessageReplyTo? replyTo;

  /// [parameters] Parameters to use to open the Web App
  final WebAppOpenParameters parameters;

  static const String constructor = 'openWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'bot_user_id': botUserId,
    'url': url,
    'message_thread_id': messageThreadId,
    'direct_messages_chat_topic_id': directMessagesChatTopicId,
    'reply_to': replyTo?.toJson(),
    'parameters': parameters.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
