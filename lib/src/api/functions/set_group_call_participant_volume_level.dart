import '../tdapi.dart';

/// Changes volume level of a participant of an active group call. If the
/// current user can manage the group call, then the participant's volume
/// level will be changed for all users with the default volume level
/// Returns [Ok]
class SetGroupCallParticipantVolumeLevel extends TdFunction {
  SetGroupCallParticipantVolumeLevel(
      {required this.groupCallId,
      required this.participantId,
      required this.volumeLevel});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Participant identifier
  final MessageSender participantId;

  /// [volumeLevel] New participant's volume level; 1-20000 in hundreds of
  /// percents
  final int volumeLevel;

  static const String CONSTRUCTOR = 'setGroupCallParticipantVolumeLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'participant_id': this.participantId.toJson(),
        'volume_level': this.volumeLevel,
        '@type': CONSTRUCTOR
      };
}
