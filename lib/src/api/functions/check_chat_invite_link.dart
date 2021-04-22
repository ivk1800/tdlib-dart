import '../tdapi.dart';

/// Checks the validity of an invite link for a chat and returns information
/// about the corresponding chat
/// Returns [ChatInviteLinkInfo]
class CheckChatInviteLink extends TdFunction {
  CheckChatInviteLink({required this.inviteLink});

  /// [inviteLink] Invite link to be checked; must have URL "t.me",
  /// "telegram.me", or "telegram.dog" and query beginning with "/joinchat/" or
  /// "/+"
  final String inviteLink;

  static const String CONSTRUCTOR = 'checkChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'invite_link': this.inviteLink, '@type': CONSTRUCTOR};
}
