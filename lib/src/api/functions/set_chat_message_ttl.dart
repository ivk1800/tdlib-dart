import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the message TTL in a chat. Requires can_delete_messages
/// administrator right in basic groups, supergroups and channels. Message TTL
/// can't be changed in a chat with the current user (Saved Messages) and the
/// chat 777000 (Telegram)
/// Returns [Ok]
class SetChatMessageTtl extends TdFunction {
  SetChatMessageTtl({required this.chatId, required this.ttl});

  /// [chatId] Chat identifier
  final int chatId;

  /// [ttl] New TTL value, in seconds; must be one of 0, 86400, 7 * 86400, or 31
  /// * 86400 unless the chat is secret
  final int ttl;

  static const String CONSTRUCTOR = 'setChatMessageTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'ttl': this.ttl, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
