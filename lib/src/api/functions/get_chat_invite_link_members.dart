import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns chat members joined a chat via an invite link. Requires
/// administrator privileges and can_invite_users right in the chat for own
/// links and owner privileges for other links
/// Returns [ChatInviteLinkMembers]
@immutable
class GetChatInviteLinkMembers extends TdFunction {
  const GetChatInviteLinkMembers({
    required this.chatId,
    required this.inviteLink,
    this.offsetMember,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link for which to return chat members
  final String inviteLink;

  /// [offsetMember] A chat member from which to return next chat members; pass
  /// null to get results from the beginning
  final ChatInviteLinkMember? offsetMember;

  /// [limit] The maximum number of chat members to return; up to 100
  final int limit;

  static const String constructor = 'getChatInviteLinkMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'invite_link': inviteLink,
        'offset_member': offsetMember?.toJson(),
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
