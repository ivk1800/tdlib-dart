import '../tdapi.dart';

/// The message Time To Live setting for a chat was changed
class UpdateChatMessageTtl extends Update {
  UpdateChatMessageTtl({required this.chatId, required this.messageTtl});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageTtl] New value of message_ttl
  final int messageTtl;

  static const String CONSTRUCTOR = 'updateChatMessageTtl';

  static UpdateChatMessageTtl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMessageTtl(
        chatId: json['chat_id'], messageTtl: json['message_ttl']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ttl': this.messageTtl,
        '@type': CONSTRUCTOR
      };
}
