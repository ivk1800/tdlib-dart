import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an HTTP URL which can be used to automatically authorize the user
/// on a website after clicking an inline button of type
/// inlineKeyboardButtonTypeLoginUrl.. Use the method getLoginUrlInfo to find
/// whether a prior user confirmation is needed. If an error is returned, then
/// the button must be handled as an ordinary URL button
/// Returns [HttpUrl]
@immutable
class GetLoginUrl extends TdFunction {
  const GetLoginUrl({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.allowWriteAccess,
  });

  /// [chatId] Chat identifier of the message with the button
  final int chatId;

  /// [messageId] Message identifier of the message with the button
  final int messageId;

  /// [buttonId] Button identifier
  final int buttonId;

  /// [allowWriteAccess] Pass true to allow the bot to send messages to the
  /// current user
  final bool allowWriteAccess;

  static const String constructor = 'getLoginUrl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'button_id': buttonId,
        'allow_write_access': allowWriteAccess,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
