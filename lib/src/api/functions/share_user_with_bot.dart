import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Shares a user after pressing a keyboardButtonTypeRequestUser button with
/// the bot
/// Returns [Ok]
@immutable
class ShareUserWithBot extends TdFunction {
  const ShareUserWithBot({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.sharedUserId,
    required this.onlyCheck,
  });

  /// [chatId] Identifier of the chat with the bot
  final int chatId;

  /// [messageId] Identifier of the message with the button
  final int messageId;

  /// [buttonId] Identifier of the button
  final int buttonId;

  /// [sharedUserId] Identifier of the shared user
  final int sharedUserId;

  /// [onlyCheck] Pass true to check that the user can be shared by the button
  /// instead of actually sharing them
  final bool onlyCheck;

  static const String constructor = 'shareUserWithBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'button_id': buttonId,
        'shared_user_id': sharedUserId,
        'only_check': onlyCheck,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
