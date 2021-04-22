import '../tdapi.dart';

/// Pins a message in a chat; requires can_pin_messages rights or
/// can_edit_messages rights in the channel
/// Returns [Ok]
class PinChatMessage extends TdFunction {
  PinChatMessage(
      {required this.chatId,
      required this.messageId,
      required this.disableNotification,
      required this.onlyForSelf});

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageId] Identifier of the new pinned message
  final int messageId;

  /// [disableNotification] True, if there should be no notification about the
  /// pinned message. Notifications are always disabled in channels and private
  /// chats
  final bool disableNotification;

  /// [onlyForSelf] True, if the message needs to be pinned for one side only;
  /// private chats only
  final bool onlyForSelf;

  static const String CONSTRUCTOR = 'pinChatMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'disable_notification': this.disableNotification,
        'only_for_self': this.onlyForSelf,
        '@type': CONSTRUCTOR
      };
}
