import '../tdapi.dart';

/// A voice chat participant was muted or unmuted
class ChatEventVoiceChatParticipantIsMutedToggled extends ChatEventAction {
  ChatEventVoiceChatParticipantIsMutedToggled(
      {required this.participant, required this.isMuted});

  /// [participant] Identifier of the affected group call participant
  final MessageSender participant;

  /// [isMuted] New value of is_muted
  final bool isMuted;

  static const String CONSTRUCTOR =
      'chatEventVoiceChatParticipantIsMutedToggled';

  static ChatEventVoiceChatParticipantIsMutedToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVoiceChatParticipantIsMutedToggled(
        participant: MessageSender.fromJson(json['participant'])!,
        isMuted: json['is_muted']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'participant': this.participant.toJson(),
        'is_muted': this.isMuted,
        '@type': CONSTRUCTOR
      };
}
