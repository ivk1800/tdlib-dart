import '../tdapi.dart';

/// A voice chat participant volume level was changed
class ChatEventVoiceChatParticipantVolumeLevelChanged extends ChatEventAction {
  ChatEventVoiceChatParticipantVolumeLevelChanged(
      {required this.participant, required this.volumeLevel});

  /// [participant] Identifier of the affected group call participant
  final MessageSender participant;

  /// [volumeLevel] New value of volume_level; 1-20000 in hundreds of percents
  final int volumeLevel;

  static const String CONSTRUCTOR =
      'chatEventVoiceChatParticipantVolumeLevelChanged';

  static ChatEventVoiceChatParticipantVolumeLevelChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVoiceChatParticipantVolumeLevelChanged(
        participant: MessageSender.fromJson(json['participant'])!,
        volumeLevel: json['volume_level']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'participant': this.participant.toJson(),
        'volume_level': this.volumeLevel,
        '@type': CONSTRUCTOR
      };
}
