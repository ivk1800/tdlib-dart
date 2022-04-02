import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a chat administrator with a number of active and revoked chat
/// invite links
class ChatInviteLinkCount extends TdObject {
  ChatInviteLinkCount(
      {required this.userId,
      required this.inviteLinkCount,
      required this.revokedInviteLinkCount});

  /// [userId] Administrator's user identifier
  final int userId;

  /// [inviteLinkCount] Number of active invite links
  final int inviteLinkCount;

  /// [revokedInviteLinkCount] Number of revoked invite links
  final int revokedInviteLinkCount;

  static const String CONSTRUCTOR = 'chatInviteLinkCount';

  static ChatInviteLinkCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkCount(
        userId: json['user_id'],
        inviteLinkCount: json['invite_link_count'],
        revokedInviteLinkCount: json['revoked_invite_link_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'invite_link_count': this.inviteLinkCount,
        'revoked_invite_link_count': this.revokedInviteLinkCount,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
