import '../tdapi.dart';

/// Returns chat members joined a chat by an invite link. Requires
/// administrator privileges and can_invite_users right in the chat for own
/// links and owner privileges for other links
/// Returns [ChatInviteLinkMembers]
class GetChatInviteLinkMembers extends TdFunction {
  GetChatInviteLinkMembers(
      {required this.chatId,
      required this.inviteLink,
      required this.offsetMember,
      required this.limit});

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link for which to return chat members
  final String inviteLink;

  /// [offsetMember] A chat member from which to return next chat members; use
  /// null to get results from the beginning
  final ChatInviteLinkMember offsetMember;

  /// [limit] Maximum number of chat members to return
  final int limit;

  static const String CONSTRUCTOR = 'getChatInviteLinkMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'invite_link': this.inviteLink,
        'offset_member': this.offsetMember.toJson(),
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };
}
