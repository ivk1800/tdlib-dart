import '../tdapi.dart';

/// Joins a group call
/// Returns [GroupCallJoinResponse]
class JoinGroupCall extends TdFunction {
  JoinGroupCall(
      {required this.groupCallId,
      required this.participantAlias,
      required this.payload,
      required this.source,
      required this.isMuted,
      required this.inviteHash});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantAlias] Identifier of the group call participant, which will be
  /// used to join the call; voice chats only
  final MessageSender participantAlias;

  /// [payload] Group join payload; received from tgcalls
  final GroupCallPayload payload;

  /// [source] Caller synchronization source identifier; received from tgcalls
  final int source;

  /// [isMuted] True, if the user's microphone is muted
  final bool isMuted;

  /// [inviteHash] If non-empty, invite hash to be used to join the group call
  /// without being muted by administrators
  final String inviteHash;

  static const String CONSTRUCTOR = 'joinGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'participant_alias': this.participantAlias.toJson(),
        'payload': this.payload.toJson(),
        'source': this.source,
        'is_muted': this.isMuted,
        'invite_hash': this.inviteHash,
        '@type': CONSTRUCTOR
      };
}
