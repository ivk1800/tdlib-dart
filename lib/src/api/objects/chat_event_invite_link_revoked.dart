import '../tdapi.dart';

/// A chat invite link was revoked
class ChatEventInviteLinkRevoked extends ChatEventAction {
  ChatEventInviteLinkRevoked({required this.inviteLink});

  /// [inviteLink] The invite link
  final ChatInviteLink inviteLink;

  static const String CONSTRUCTOR = 'chatEventInviteLinkRevoked';

  static ChatEventInviteLinkRevoked? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInviteLinkRevoked(
        inviteLink: ChatInviteLink.fromJson(json['invite_link'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'invite_link': this.inviteLink.toJson(), '@type': CONSTRUCTOR};
}
