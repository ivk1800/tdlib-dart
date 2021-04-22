import '../tdapi.dart';

/// The number of online group members has changed. This update with non-zero
/// count is sent only for currently opened chats. There is no guarantee that
/// it will be sent just after the count has changed
class UpdateChatOnlineMemberCount extends Update {
  UpdateChatOnlineMemberCount(
      {required this.chatId, required this.onlineMemberCount});

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [onlineMemberCount] New number of online members in the chat, or 0 if
  /// unknown
  final int onlineMemberCount;

  static const String CONSTRUCTOR = 'updateChatOnlineMemberCount';

  static UpdateChatOnlineMemberCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatOnlineMemberCount(
        chatId: json['chat_id'],
        onlineMemberCount: json['online_member_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'online_member_count': this.onlineMemberCount,
        '@type': CONSTRUCTOR
      };
}
