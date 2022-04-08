import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes revoked chat invite links. Requires administrator privileges and
/// can_invite_users right in the chat for own links and owner privileges for
/// other links
/// Returns [Ok]
@immutable
class DeleteRevokedChatInviteLink extends TdFunction {
  const DeleteRevokedChatInviteLink({
    required this.chatId,
    required this.inviteLink,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [inviteLink] Invite link to revoke
  final String inviteLink;

  static const String constructor = 'deleteRevokedChatInviteLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'invite_link': inviteLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
