import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns invite links for a chat created by specified administrator.
/// Requires administrator privileges and can_invite_users right in the chat
/// to get own links and owner privileges to get other links
/// Returns [ChatInviteLinks]
class GetChatInviteLinks extends TdFunction {
  GetChatInviteLinks(
      {required this.chatId,
      required this.creatorUserId,
      required this.isRevoked,
      required this.offsetDate,
      required this.offsetInviteLink,
      required this.limit});

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

  static const String CONSTRUCTOR = 'getChatInviteLinks';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'creator_user_id': this.creatorUserId,
        'is_revoked': this.isRevoked,
        'offset_date': this.offsetDate,
        'offset_invite_link': this.offsetInviteLink,
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
