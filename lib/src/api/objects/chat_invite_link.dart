import '../tdapi.dart';

/// Contains a chat invite link
class ChatInviteLink extends TdObject {
  ChatInviteLink(
      {required this.inviteLink,
      required this.creatorUserId,
      required this.date,
      required this.editDate,
      required this.expireDate,
      required this.memberLimit,
      required this.memberCount,
      required this.isPrimary,
      required this.isRevoked});

  /// [inviteLink] Chat invite link
  final String inviteLink;

  /// [creatorUserId] User identifier of an administrator created the link
  final int creatorUserId;

  /// [date] Point in time (Unix timestamp) when the link was created
  final int date;

  /// [editDate] Point in time (Unix timestamp) when the link was last edited; 0
  /// if never or unknown
  final int editDate;

  /// [expireDate] Point in time (Unix timestamp) when the link will expire; 0
  /// if never
  final int expireDate;

  /// [memberLimit] Maximum number of members, which can join the chat using the
  /// link simultaneously; 0 if not limited
  final int memberLimit;

  /// [memberCount] Number of chat members, which joined the chat using the link
  final int memberCount;

  /// [isPrimary] True, if the link is primary. Primary invite link can't have
  /// expire date or usage limit. There is exactly one primary invite link for
  /// each administrator with can_invite_users right at a given time
  final bool isPrimary;

  /// [isRevoked] True, if the link was revoked
  final bool isRevoked;

  static const String CONSTRUCTOR = 'chatInviteLink';

  static ChatInviteLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLink(
        inviteLink: json['invite_link'],
        creatorUserId: json['creator_user_id'],
        date: json['date'],
        editDate: json['edit_date'],
        expireDate: json['expire_date'],
        memberLimit: json['member_limit'],
        memberCount: json['member_count'],
        isPrimary: json['is_primary'],
        isRevoked: json['is_revoked']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invite_link': this.inviteLink,
        'creator_user_id': this.creatorUserId,
        'date': this.date,
        'edit_date': this.editDate,
        'expire_date': this.expireDate,
        'member_limit': this.memberLimit,
        'member_count': this.memberCount,
        'is_primary': this.isPrimary,
        'is_revoked': this.isRevoked,
        '@type': CONSTRUCTOR
      };
}
