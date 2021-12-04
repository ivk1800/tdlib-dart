import '../tdapi.dart';

/// Toggles whether a participant of an active group call is muted, unmuted,
/// or allowed to unmute themselves
/// Returns [Ok]
class ToggleGroupCallParticipantIsMuted extends TdFunction {
  ToggleGroupCallParticipantIsMuted(
      {required this.groupCallId,
      required this.participantId,
      required this.isMuted});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Participant identifier
  final MessageSender participantId;

  /// [isMuted] Pass true if the user must be muted and false otherwise
  final bool isMuted;

  static const String CONSTRUCTOR = 'toggleGroupCallParticipantIsMuted';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'participant_id': this.participantId.toJson(),
        'is_muted': this.isMuted,
        '@type': CONSTRUCTOR
      };
}
