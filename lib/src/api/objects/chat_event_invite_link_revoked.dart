import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat invite link was revoked
@immutable
class ChatEventInviteLinkRevoked extends ChatEventAction {
  const ChatEventInviteLinkRevoked({
    required this.inviteLink,
  });

  /// [inviteLink] The invite link
  final ChatInviteLink inviteLink;

  static const String constructor = 'chatEventInviteLinkRevoked';

  static ChatEventInviteLinkRevoked? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventInviteLinkRevoked(
      inviteLink: ChatInviteLink.fromJson(json['invite_link'])!,
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
