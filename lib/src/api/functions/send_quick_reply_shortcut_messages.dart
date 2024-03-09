import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends messages from a quick reply shortcut. Requires Telegram Business
/// subscription
/// Returns [Messages]
@immutable
class SendQuickReplyShortcutMessages extends TdFunction {
  const SendQuickReplyShortcutMessages({
    required this.chatId,
    required this.shortcutId,
    required this.sendingId,
  });

  /// [chatId] Identifier of the chat to which to send messages. The chat must
  /// be a private chat with a regular user
  final int chatId;

  /// [shortcutId] Unique identifier of the quick reply shortcut
  final int shortcutId;

  /// [sendingId] Non-persistent identifier, which will be returned back in
  /// messageSendingStatePending object and can be used to match sent messages
  /// and corresponding updateNewMessage updates
  final int sendingId;

  static const String constructor = 'sendQuickReplyShortcutMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'shortcut_id': shortcutId,
        'sending_id': sendingId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
