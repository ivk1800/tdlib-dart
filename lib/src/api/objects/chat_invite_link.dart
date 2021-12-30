import '../tdapi.dart';

/// Contains a chat invite link
class ChatInviteLink extends TdObject {
  ChatInviteLink(
      {required this.inviteLink,
      required this.name,
      required this.creatorUserId,
      required this.date,
      required this.editDate,
      required this.expirationDate,
      required this.memberLimit,
      required this.memberCount,
      required this.pendingJoinRequestCount,
      required this.createsJoinRequest,
      required this.isPrimary,
      required this.isRevoked});

  /// [inviteLink] Chat invite link
  final String inviteLink;

  /// [name] Name of the link
  final String name;

  /// [creatorUserId] User identifier of an administrator created the link
  final int creatorUserId;

  /// [date] Point in time (Unix timestamp) when the link was created
  final int date;

  /// [editDate] Point in time (Unix timestamp) when the link was last edited; 0
  /// if never or unknown
  final int editDate;

  /// [expirationDate] Point in time (Unix timestamp) when the link will expire;
  /// 0 if never
  final int expirationDate;

  /// [memberLimit] The maximum number of members, which can join the chat using
  /// the link simultaneously; 0 if not limited. Always 0 if the link requires
  /// approval
  final int memberLimit;

  /// [memberCount] Number of chat members, which joined the chat using the link
  final int memberCount;

  /// [pendingJoinRequestCount] Number of pending join requests created using
  /// this link
  final int pendingJoinRequestCount;

  /// [createsJoinRequest] True, if the link only creates join request. If true,
  /// total number of joining members will be unlimited
  final bool createsJoinRequest;

  /// [isPrimary] True, if the link is primary. Primary invite link can't have
  /// name, expiration date, or usage limit. There is exactly one primary invite
  /// link for each administrator with can_invite_users right at a given time
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
        name: json['name'],
        creatorUserId: json['creator_user_id'],
        date: json['date'],
        editDate: json['edit_date'],
        expirationDate: json['expiration_date'],
        memberLimit: json['member_limit'],
        memberCount: json['member_count'],
        pendingJoinRequestCount: json['pending_join_request_count'],
        createsJoinRequest: json['creates_join_request'],
        isPrimary: json['is_primary'],
        isRevoked: json['is_revoked']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invite_link': this.inviteLink,
        'name': this.name,
        'creator_user_id': this.creatorUserId,
        'date': this.date,
        'edit_date': this.editDate,
        'expiration_date': this.expirationDate,
        'member_limit': this.memberLimit,
        'member_count': this.memberCount,
        'pending_join_request_count': this.pendingJoinRequestCount,
        'creates_join_request': this.createsJoinRequest,
        'is_primary': this.isPrimary,
        'is_revoked': this.isRevoked,
        '@type': CONSTRUCTOR
      };
}
