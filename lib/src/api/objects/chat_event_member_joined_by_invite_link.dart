import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A new member joined the chat via an invite link
class ChatEventMemberJoinedByInviteLink extends ChatEventAction {
  ChatEventMemberJoinedByInviteLink({required this.inviteLink});

  /// [inviteLink] Invite link used to join the chat
  final ChatInviteLink inviteLink;

  static const String CONSTRUCTOR = 'chatEventMemberJoinedByInviteLink';

  static ChatEventMemberJoinedByInviteLink? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberJoinedByInviteLink(
        inviteLink: ChatInviteLink.fromJson(json['invite_link'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'invite_link': this.inviteLink.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
