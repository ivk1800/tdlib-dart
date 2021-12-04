import '../tdapi.dart';

/// Invites users to an active group call. Sends a service message of type
/// messageInviteToGroupCall for video chats
/// Returns [Ok]
class InviteGroupCallParticipants extends TdFunction {
  InviteGroupCallParticipants(
      {required this.groupCallId, required this.userIds});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userIds] User identifiers. At most 10 users can be invited simultaneously
  final List<int> userIds;

  static const String CONSTRUCTOR = 'inviteGroupCallParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'user_ids': userIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };
}
