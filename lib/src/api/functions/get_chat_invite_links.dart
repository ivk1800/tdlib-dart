import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns invite links for a chat created by specified administrator.
/// Requires administrator privileges and can_invite_users right in the chat
/// to get own links and owner privileges to get other links
/// Returns [ChatInviteLinks]
@immutable
class GetChatInviteLinks extends TdFunction {
  const GetChatInviteLinks({
    required this.chatId,
    required this.creatorUserId,
    required this.isRevoked,
    required this.offsetDate,
    required this.offsetInviteLink,
    required this.limit,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [creatorUserId] User identifier of a chat administrator. Must be an
  /// identifier of the current user for non-owner
  final int creatorUserId;

  /// [isRevoked] Pass true if revoked links needs to be returned instead of
  /// active or expired
  final bool isRevoked;

  /// [offsetDate] Creation date of an invite link starting after which to
  /// return invite links; use 0 to get results from the beginning
  final int offsetDate;

  /// [offsetInviteLink] Invite link starting after which to return invite
  /// links; use empty string to get results from the beginning
  final String offsetInviteLink;

  /// [limit] The maximum number of invite links to return; up to 100
  final int limit;

  static const String constructor = 'getChatInviteLinks';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'creator_user_id': creatorUserId,
        'is_revoked': isRevoked,
        'offset_date': offsetDate,
        'offset_invite_link': offsetInviteLink,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
