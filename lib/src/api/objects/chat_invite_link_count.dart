import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat administrator with a number of active and revoked chat
/// invite links
@immutable
class ChatInviteLinkCount extends TdObject {
  const ChatInviteLinkCount({
    required this.userId,
    required this.inviteLinkCount,
    required this.revokedInviteLinkCount,
  });

  /// [userId] Administrator's user identifier
  final int userId;

  /// [inviteLinkCount] Number of active invite links
  final int inviteLinkCount;

  /// [revokedInviteLinkCount] Number of revoked invite links
  final int revokedInviteLinkCount;

  static const String constructor = 'chatInviteLinkCount';

  static ChatInviteLinkCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkCount(
      userId: json['user_id'] as int,
      inviteLinkCount: json['invite_link_count'] as int,
      revokedInviteLinkCount: json['revoked_invite_link_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'invite_link_count': inviteLinkCount,
        'revoked_invite_link_count': revokedInviteLinkCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
