import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that a Web App is being opened from attachment menu, a
/// botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an
/// inlineKeyboardButtonTypeWebApp button.. For each bot, a confirmation alert
/// about data sent to the bot must be shown once
/// Returns [WebAppInfo]
@immutable
class OpenWebApp extends TdFunction {
  const OpenWebApp({
    required this.chatId,
    required this.botUserId,
    required this.url,
    this.theme,
    required this.replyToMessageId,
  });

  /// [chatId] Identifier of the chat in which the Web App is opened
  final int chatId;

  /// [botUserId] Identifier of the bot, providing the Web App
  final int botUserId;

  /// [url] The URL from an inlineKeyboardButtonTypeWebApp button, a
  /// botMenuButton button, or an internalLinkTypeAttachmentMenuBot link, or an
  /// empty string otherwise
  final String url;

  /// [theme] Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// [replyToMessageId] Identifier of the replied message for the message sent
  /// by the Web App; 0 if none
  final int replyToMessageId;

  static const String constructor = 'openWebApp';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'bot_user_id': botUserId,
        'url': url,
        'theme': theme?.toJson(),
        'reply_to_message_id': replyToMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
