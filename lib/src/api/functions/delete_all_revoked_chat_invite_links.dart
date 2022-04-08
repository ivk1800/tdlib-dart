import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes all revoked chat invite links created by a given chat
/// administrator. Requires administrator privileges and can_invite_users
/// right in the chat for own links and owner privileges for other links
/// Returns [Ok]
@immutable
class DeleteAllRevokedChatInviteLinks extends TdFunction {
  const DeleteAllRevokedChatInviteLinks({
    required this.chatId,
    required this.creatorUserId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [creatorUserId] User identifier of a chat administrator, which links will
  /// be deleted. Must be an identifier of the current user for non-owner
  final int creatorUserId;

  static const String constructor = 'deleteAllRevokedChatInviteLinks';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'creator_user_id': creatorUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
