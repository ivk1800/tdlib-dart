import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Joins an active group call. Returns join response payload for tgcalls
/// Returns [Text]
class JoinGroupCall extends TdFunction {
  JoinGroupCall(
      {required this.groupCallId,
      this.participantId,
      required this.audioSourceId,
      required this.payload,
      required this.isMuted,
      required this.isMyVideoEnabled,
      required this.inviteHash});

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

  static const String CONSTRUCTOR = 'joinGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'participant_id': this.participantId?.toJson(),
        'audio_source_id': this.audioSourceId,
        'payload': this.payload,
        'is_muted': this.isMuted,
        'is_my_video_enabled': this.isMyVideoEnabled,
        'invite_hash': this.inviteHash,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
