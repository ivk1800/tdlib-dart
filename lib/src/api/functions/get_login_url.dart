import '../tdapi.dart';

/// Returns an HTTP URL which can be used to automatically authorize the user
/// on a website after clicking an inline button of type
/// inlineKeyboardButtonTypeLoginUrl.. Use the method getLoginUrlInfo to find
/// whether a prior user confirmation is needed. If an error is returned, then
/// the button must be handled as an ordinary URL button
/// Returns [HttpUrl]
class GetLoginUrl extends TdFunction {
  GetLoginUrl(
      {required this.chatId,
      required this.messageId,
      required this.buttonId,
      required this.allowWriteAccess});

  /// [chatId] Chat identifier of the message with the button
  final int chatId;

  /// [messageId] Message identifier of the message with the button
  final int messageId;

  /// [buttonId] Button identifier
  final int buttonId;

  /// [allowWriteAccess] True, if the user allowed the bot to send them messages
  final bool allowWriteAccess;

  static const String CONSTRUCTOR = 'getLoginUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'button_id': this.buttonId,
        'allow_write_access': this.allowWriteAccess,
        '@type': CONSTRUCTOR
      };
}
