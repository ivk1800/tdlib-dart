import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Outgoing messages were read
@immutable
class UpdateChatReadOutbox extends Update {
  const UpdateChatReadOutbox({
    required this.chatId,
    required this.lastReadOutboxMessageId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [lastReadOutboxMessageId] Identifier of last read outgoing message
  final int lastReadOutboxMessageId;

  static const String constructor = 'updateChatReadOutbox';

  static UpdateChatReadOutbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReadOutbox(
      chatId: json['chat_id'] as int,
      lastReadOutboxMessageId: json['last_read_outbox_message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'last_read_outbox_message_id': lastReadOutboxMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
