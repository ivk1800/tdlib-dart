import '../tdapi.dart';

/// Toggles whether a group call participant is muted, unmuted, or allowed to
/// unmute themself
/// Returns [Ok]
class ToggleGroupCallParticipantIsMuted extends TdFunction {
  ToggleGroupCallParticipantIsMuted(
      {required this.groupCallId,
      required this.participant,
      required this.isMuted});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participant] Participant identifier
  final MessageSender participant;

  /// [isMuted] Pass true if the user must be muted and false otherwise
  final bool isMuted;

  static const String CONSTRUCTOR = 'toggleGroupCallParticipantIsMuted';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'participant': this.participant.toJson(),
        'is_muted': this.isMuted,
        '@type': CONSTRUCTOR
      };
}
