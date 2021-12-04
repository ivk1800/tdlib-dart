import '../tdapi.dart';

/// Changes the message TTL setting (sets a new self-destruct timer) in a
/// chat. Requires can_delete_messages administrator right in basic groups,
/// supergroups and channels. Message TTL setting of a chat with the current
/// user (Saved Messages) and the chat 777000 (Telegram) can't be changed
/// Returns [Ok]
class SetChatMessageTtlSetting extends TdFunction {
  SetChatMessageTtlSetting({required this.chatId, required this.ttl});

  /// [chatId] Chat identifier
  final int chatId;

  /// [ttl] New TTL value, in seconds; must be one of 0, 86400, 7 * 86400, or 31
  /// * 86400 unless the chat is secret
  final int ttl;

  static const String CONSTRUCTOR = 'setChatMessageTtlSetting';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'ttl': this.ttl, '@type': CONSTRUCTOR};
}
