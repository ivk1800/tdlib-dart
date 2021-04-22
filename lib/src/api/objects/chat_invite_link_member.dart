import '../tdapi.dart';

/// Describes a chat member joined a chat by an invite link
class ChatInviteLinkMember extends TdObject {
  ChatInviteLinkMember({required this.userId, required this.joinedChatDate});

  /// [userId] User identifier
  final int userId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the
  /// chat
  final int joinedChatDate;

  static const String CONSTRUCTOR = 'chatInviteLinkMember';

  static ChatInviteLinkMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkMember(
        userId: json['user_id'], joinedChatDate: json['joined_chat_date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'joined_chat_date': this.joinedChatDate,
        '@type': CONSTRUCTOR
      };
}
