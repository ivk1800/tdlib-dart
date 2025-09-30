import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Invites users to an active video chat. Sends a service message of the type
/// messageInviteVideoChatParticipants to the chat bound to the group call
/// Returns [Ok]
@immutable
class InviteVideoChatParticipants extends TdFunction {
  const InviteVideoChatParticipants({
    required this.groupCallId,
    required this.userIds,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userIds] User identifiers. At most 10 users can be invited simultaneously
  final List<int> userIds;

  static const String constructor = 'inviteVideoChatParticipants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'user_ids': userIds.map((item) => item).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
