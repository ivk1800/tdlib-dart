import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the message TTL in a chat. Requires can_delete_messages
/// administrator right in basic groups, supergroups and channels. Message TTL
/// can't be changed in a chat with the current user (Saved Messages) and the
/// chat 777000 (Telegram)
/// Returns [Ok]
@immutable
class SetChatMessageTtl extends TdFunction {
  const SetChatMessageTtl({
    required this.chatId,
    required this.ttl,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [ttl] New TTL value, in seconds; must be one of 0, 86400, 7 * 86400, or 31
  /// * 86400 unless the chat is secret
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
