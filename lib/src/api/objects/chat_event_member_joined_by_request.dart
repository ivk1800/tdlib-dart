import '../tdapi.dart';

/// A new member was accepted to the chat by an administrator
class ChatEventMemberJoinedByRequest extends ChatEventAction {
  ChatEventMemberJoinedByRequest(
      {required this.approverUserId, this.inviteLink});

  /// [approverUserId] User identifier of the chat administrator, approved user
  /// join request
  final int approverUserId;

  /// [inviteLink] Invite link used to join the chat; may be null
  final ChatInviteLink? inviteLink;

  static const String CONSTRUCTOR = 'chatEventMemberJoinedByRequest';

  static ChatEventMemberJoinedByRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberJoinedByRequest(
        approverUserId: json['approver_user_id'],
        inviteLink: ChatInviteLink.fromJson(json['invite_link']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'approver_user_id': this.approverUserId,
        'invite_link': this.inviteLink?.toJson(),
        '@type': CONSTRUCTOR
      };
}
