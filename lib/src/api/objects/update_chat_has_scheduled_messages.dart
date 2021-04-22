import '../tdapi.dart';

/// A chat's has_scheduled_messages field has changed
class UpdateChatHasScheduledMessages extends Update {
  UpdateChatHasScheduledMessages(
      {required this.chatId, required this.hasScheduledMessages});

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasScheduledMessages] New value of has_scheduled_messages
  final bool hasScheduledMessages;

  static const String CONSTRUCTOR = 'updateChatHasScheduledMessages';

  static UpdateChatHasScheduledMessages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatHasScheduledMessages(
        chatId: json['chat_id'],
        hasScheduledMessages: json['has_scheduled_messages']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'has_scheduled_messages': this.hasScheduledMessages,
        '@type': CONSTRUCTOR
      };
}
