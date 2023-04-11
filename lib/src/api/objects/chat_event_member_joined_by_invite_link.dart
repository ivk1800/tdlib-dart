import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new member joined the chat via an invite link
@immutable
class ChatEventMemberJoinedByInviteLink extends ChatEventAction {
  const ChatEventMemberJoinedByInviteLink({
    required this.inviteLink,
  });

  /// [inviteLink] Invite link used to join the chat
  final ChatInviteLink inviteLink;

  static const String constructor = 'chatEventMemberJoinedByInviteLink';

  static ChatEventMemberJoinedByInviteLink? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberJoinedByInviteLink(
      inviteLink: ChatInviteLink.fromJson(
          json['invite_link'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_link': inviteLink.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
