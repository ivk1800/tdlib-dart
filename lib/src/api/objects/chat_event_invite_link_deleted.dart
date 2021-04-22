import '../tdapi.dart';

/// A revoked chat invite link was deleted
class ChatEventInviteLinkDeleted extends ChatEventAction {
  ChatEventInviteLinkDeleted({required this.inviteLink});

  /// [inviteLink] The invite link
  final ChatInviteLink inviteLink;

  static const String CONSTRUCTOR = 'chatEventInviteLinkDeleted';

  static ChatEventInviteLinkDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInviteLinkDeleted(
        inviteLink: ChatInviteLink.fromJson(json['invite_link'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'invite_link': this.inviteLink.toJson(), '@type': CONSTRUCTOR};
}
