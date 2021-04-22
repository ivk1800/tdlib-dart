import '../tdapi.dart';

/// Changes a group call participant's volume level. If the current user can
/// manage the group call, then the participant's volume level will be changed
/// for all users with default volume level
/// Returns [Ok]
class SetGroupCallParticipantVolumeLevel extends TdFunction {
  SetGroupCallParticipantVolumeLevel(
      {required this.groupCallId,
      required this.participant,
      required this.volumeLevel});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participant] Participant identifier
  final MessageSender participant;

  /// [volumeLevel] New participant's volume level; 1-20000 in hundreds of
  /// percents
  final int volumeLevel;

  static const String CONSTRUCTOR = 'setGroupCallParticipantVolumeLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'participant': this.participant.toJson(),
        'volume_level': this.volumeLevel,
        '@type': CONSTRUCTOR
      };
}
