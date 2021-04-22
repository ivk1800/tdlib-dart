import '../tdapi.dart';

/// Deletes revoked chat invite links. Requires administrator privileges and
/// can_invite_users right in the chat for own links and owner privileges for
/// other links
/// Returns [Ok]
class DeleteRevokedChatInviteLink extends TdFunction {
  DeleteRevokedChatInviteLink({required this.chatId, required this.inviteLink});

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to revoke
  final String inviteLink;

  static const String CONSTRUCTOR = 'deleteRevokedChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'invite_link': this.inviteLink,
        '@type': CONSTRUCTOR
      };
}
