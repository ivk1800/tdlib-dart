import '../tdapi.dart';

/// Describes a chat member joined a chat via an invite link
class ChatInviteLinkMember extends TdObject {
  ChatInviteLinkMember(
      {required this.userId,
      required this.joinedChatDate,
      required this.approverUserId});

  /// [userId] User identifier
  final int userId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the
  /// chat
  final int joinedChatDate;

  /// [approverUserId] User identifier of the chat administrator, approved user
  /// join request
  final int approverUserId;

  static const String CONSTRUCTOR = 'chatInviteLinkMember';

  static ChatInviteLinkMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkMember(
        userId: json['user_id'],
        joinedChatDate: json['joined_chat_date'],
        approverUserId: json['approver_user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'joined_chat_date': this.joinedChatDate,
        'approver_user_id': this.approverUserId,
        '@type': CONSTRUCTOR
      };
}
