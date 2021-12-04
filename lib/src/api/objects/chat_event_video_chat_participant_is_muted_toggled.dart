import '../tdapi.dart';

/// A video chat participant was muted or unmuted
class ChatEventVideoChatParticipantIsMutedToggled extends ChatEventAction {
  ChatEventVideoChatParticipantIsMutedToggled(
      {required this.participantId, required this.isMuted});

  /// [participantId] Identifier of the affected group call participant
  final MessageSender participantId;

  /// [isMuted] New value of is_muted
  final bool isMuted;

  static const String CONSTRUCTOR =
      'chatEventVideoChatParticipantIsMutedToggled';

  static ChatEventVideoChatParticipantIsMutedToggled? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatParticipantIsMutedToggled(
        participantId: MessageSender.fromJson(json['participant_id'])!,
        isMuted: json['is_muted']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'participant_id': this.participantId.toJson(),
        'is_muted': this.isMuted,
        '@type': CONSTRUCTOR
      };
}
