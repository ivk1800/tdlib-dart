import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the message auto-delete or self-destruct (for secret chats) time
/// in a chat. Requires change_info administrator right in basic groups,
/// supergroups and channels Message auto-delete time can't be changed in a
/// chat with the current user (Saved Messages) and the chat 777000
/// (Telegram).
/// Returns [Ok]
@immutable
class SetChatMessageAutoDeleteTime extends TdFunction {
  const SetChatMessageAutoDeleteTime({
    required this.chatId,
    required this.messageAutoDeleteTime,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageAutoDeleteTime] New time value, in seconds; unless the chat is
  /// secret, it must be from 0 up to 365 * 86400 and be divisible by 86400. If
  /// 0, then messages aren't deleted automatically
  final int messageAutoDeleteTime;

  static const String constructor = 'setChatMessageAutoDeleteTime';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_auto_delete_time': messageAutoDeleteTime,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
