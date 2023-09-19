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
    this.theme,
    required this.applicationName,
    required this.messageThreadId,
    this.replyTo,
  });

  /// [chatId] Identifier of the chat in which the Web App is opened. The Web
  /// App can't be opened in secret chats
  final int chatId;

  /// [botUserId] Identifier of the bot, providing the Web App
  final int botUserId;

  /// [url] The URL from an inlineKeyboardButtonTypeWebApp button, a
  /// botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an
  /// empty string otherwise
  final String url;

  /// [theme] Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// [applicationName] Short name of the application; 0-64 English letters,
  /// digits, and underscores
  final String applicationName;

  /// [messageThreadId] If not 0, a message thread identifier in which the
  /// message will be sent
  final int messageThreadId;

  /// [replyTo] Identifier of the replied message or story for the message sent
  /// by the Web App; pass null if none
  final MessageReplyTo? replyTo;

  static const String constructor = 'openWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'bot_user_id': botUserId,
        'url': url,
        'theme': theme?.toJson(),
        'application_name': applicationName,
        'message_thread_id': messageThreadId,
        'reply_to': replyTo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
