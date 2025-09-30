import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Invites a user to an active group call; for group calls not bound to a
/// chat only. Sends a service message of the type messageGroupCall. The group
/// call can have at most getOption("group_call_participant_count_max")
/// participants
/// Returns [InviteGroupCallParticipantResult]
@immutable
class InviteGroupCallParticipant extends TdFunction {
  const InviteGroupCallParticipant({
    required this.groupCallId,
    required this.userId,
    required this.isVideo,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userId] User identifier
  final int userId;

  /// [isVideo] Pass true if the group call is a video call
  final bool isVideo;

  static const String constructor = 'inviteGroupCallParticipant';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'user_id': userId,
    'is_video': isVideo,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
