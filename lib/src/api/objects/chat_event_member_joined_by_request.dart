import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new member was accepted to the chat by an administrator
@immutable
class ChatEventMemberJoinedByRequest extends ChatEventAction {
  const ChatEventMemberJoinedByRequest({
    required this.approverUserId,
    this.inviteLink,
  });

  /// [approverUserId] User identifier of the chat administrator, approved user
  /// join request
  final int approverUserId;

  /// [inviteLink] Invite link used to join the chat; may be null
  final ChatInviteLink? inviteLink;

  static const String constructor = 'chatEventMemberJoinedByRequest';

  static ChatEventMemberJoinedByRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMemberJoinedByRequest(
      approverUserId: json['approver_user_id'] as int,
      inviteLink:
          ChatInviteLink.fromJson(json['invite_link'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'approver_user_id': approverUserId,
        'invite_link': inviteLink?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
