import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Revokes invite link for a chat. Available for basic groups, supergroups,
/// and channels. Requires administrator privileges and can_invite_users right
/// in the chat for own links and owner privileges for other links.. If a
/// primary link is revoked, then additionally to the revoked link returns new
/// primary link
/// Returns [ChatInviteLinks]
class RevokeChatInviteLink extends TdFunction {
  RevokeChatInviteLink({required this.chatId, required this.inviteLink});

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to be revoked
  final String inviteLink;

  static const String CONSTRUCTOR = 'revokeChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'invite_link': this.inviteLink,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
