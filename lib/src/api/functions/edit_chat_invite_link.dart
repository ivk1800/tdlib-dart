import '../tdapi.dart';

/// Edits a non-primary invite link for a chat. Available for basic groups,
/// supergroups, and channels. Requires administrator privileges and
/// can_invite_users right in the chat for own links and owner privileges for
/// other links
/// Returns [ChatInviteLink]
class EditChatInviteLink extends TdFunction {
  EditChatInviteLink(
      {required this.chatId,
      required this.inviteLink,
      required this.name,
      required this.expirationDate,
      required this.memberLimit,
      required this.createsJoinRequest});

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to be edited
  final String inviteLink;

  /// [name] Invite link name; 0-32 characters
  final String name;

  /// [expirationDate] Point in time (Unix timestamp) when the link will expire;
  /// pass 0 if never
  final int expirationDate;

  /// [memberLimit] The maximum number of chat members that can join the chat
  /// via the link simultaneously; 0-99999; pass 0 if not limited
  final int memberLimit;

  /// [createsJoinRequest] True, if the link only creates join request. If true,
  /// member_limit must not be specified
  final bool createsJoinRequest;

  static const String CONSTRUCTOR = 'editChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'invite_link': this.inviteLink,
        'name': this.name,
        'expiration_date': this.expirationDate,
        'member_limit': this.memberLimit,
        'creates_join_request': this.createsJoinRequest,
        '@type': CONSTRUCTOR
      };
}
