import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Pins a message in a chat. A message can be pinned only if
/// messageProperties.can_be_pinned
/// Returns [Ok]
@immutable
class PinChatMessage extends TdFunction {
  const PinChatMessage({
    required this.chatId,
    required this.messageId,
    required this.disableNotification,
    required this.onlyForSelf,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [messageId] Identifier of the new pinned message
  final int messageId;

  /// [disableNotification] Pass true to disable notification about the pinned
  /// message. Notifications are always disabled in channels and private chats
  final bool disableNotification;

  /// [onlyForSelf] Pass true to pin the message only for self; private chats
  /// only
  final bool onlyForSelf;

  static const String constructor = 'pinChatMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'disable_notification': disableNotification,
        'only_for_self': onlyForSelf,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
