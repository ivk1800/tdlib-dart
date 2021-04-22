import '../tdapi.dart';

/// Outgoing messages were read
class UpdateChatReadOutbox extends Update {
  UpdateChatReadOutbox(
      {required this.chatId, required this.lastReadOutboxMessageId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastReadOutboxMessageId] Identifier of last read outgoing message
  final int lastReadOutboxMessageId;

  static const String CONSTRUCTOR = 'updateChatReadOutbox';

  static UpdateChatReadOutbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReadOutbox(
        chatId: json['chat_id'],
        lastReadOutboxMessageId: json['last_read_outbox_message_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'last_read_outbox_message_id': this.lastReadOutboxMessageId,
        '@type': CONSTRUCTOR
      };
}
