import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Joins an active group call. Returns join response payload for tgcalls
/// Returns [Text]
@immutable
class JoinGroupCall extends TdFunction {
  const JoinGroupCall({
    required this.groupCallId,
    this.participantId,
    required this.audioSourceId,
    required this.payload,
    required this.isMuted,
    required this.isMyVideoEnabled,
    required this.inviteHash,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Identifier of a group call participant, which will be used
  /// to join the call; pass null to join as self; video chats only
  final MessageSender? participantId;

  /// [audioSourceId] Caller audio channel synchronization source identifier;
  /// received from tgcalls
  final int audioSourceId;

  /// [payload] Group call join payload; received from tgcalls
  final String payload;

  /// [isMuted] True, if the user's microphone is muted
  final bool isMuted;

  /// [isMyVideoEnabled] True, if the user's video is enabled
  final bool isMyVideoEnabled;

  /// [inviteHash] If non-empty, invite hash to be used to join the group call
  /// without being muted by administrators
  final String inviteHash;

  static const String constructor = 'joinGroupCall';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'participant_id': participantId?.toJson(),
        'audio_source_id': audioSourceId,
        'payload': payload,
        'is_muted': isMuted,
        'is_my_video_enabled': isMyVideoEnabled,
        'invite_hash': inviteHash,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
