import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a chat invite link
@immutable
class ChatInviteLink extends TdObject {
  const ChatInviteLink({
    required this.inviteLink,
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
    required this.isRevoked,
  });

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

  static const String constructor = 'chatInviteLink';

  static ChatInviteLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLink(
      inviteLink: json['invite_link'] as String,
      name: json['name'] as String,
      creatorUserId: json['creator_user_id'] as int,
      date: json['date'] as int,
      editDate: json['edit_date'] as int,
      expirationDate: json['expiration_date'] as int,
      memberLimit: json['member_limit'] as int,
      memberCount: json['member_count'] as int,
      pendingJoinRequestCount: json['pending_join_request_count'] as int,
      createsJoinRequest: json['creates_join_request'] as bool,
      isPrimary: json['is_primary'] as bool,
      isRevoked: json['is_revoked'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_link': inviteLink,
        'name': name,
        'creator_user_id': creatorUserId,
        'date': date,
        'edit_date': editDate,
        'expiration_date': expirationDate,
        'member_limit': memberLimit,
        'member_count': memberCount,
        'pending_join_request_count': pendingJoinRequestCount,
        'creates_join_request': createsJoinRequest,
        'is_primary': isPrimary,
        'is_revoked': isRevoked,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
