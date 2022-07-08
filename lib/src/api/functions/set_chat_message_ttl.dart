import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the message TTL in a chat. Requires can_delete_messages
/// administrator right in basic groups, supergroups and channels. Message TTL
/// can't be changed in a chat with the current user (Saved Messages) and the
/// chat 777000 (Telegram).
/// Returns [Ok]
@immutable
class SetChatMessageTtl extends TdFunction {
  const SetChatMessageTtl({
    required this.chatId,
    required this.ttl,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [ttl] New TTL value, in seconds; unless the chat is secret, it must be
  /// from 0 up to 365 * 86400 and be divisible by 86400
  final int ttl;

  static const String constructor = 'setChatMessageTtl';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'ttl': ttl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
