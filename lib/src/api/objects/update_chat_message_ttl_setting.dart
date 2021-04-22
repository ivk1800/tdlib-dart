import '../tdapi.dart';

/// The message Time To Live setting for a chat was changed
class UpdateChatMessageTtlSetting extends Update {
  UpdateChatMessageTtlSetting(
      {required this.chatId, required this.messageTtlSetting});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageTtlSetting] New value of message_ttl_setting
  final int messageTtlSetting;

  static const String CONSTRUCTOR = 'updateChatMessageTtlSetting';

  static UpdateChatMessageTtlSetting? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatMessageTtlSetting(
        chatId: json['chat_id'],
        messageTtlSetting: json['message_ttl_setting']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ttl_setting': this.messageTtlSetting,
        '@type': CONSTRUCTOR
      };
}
