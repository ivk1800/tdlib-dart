import '../tdapi.dart';

/// A video chat participant volume level was changed
class ChatEventVideoChatParticipantVolumeLevelChanged extends ChatEventAction {
  ChatEventVideoChatParticipantVolumeLevelChanged(
      {required this.participantId, required this.volumeLevel});

  /// [participantId] Identifier of the affected group call participant
  final MessageSender participantId;

  /// [volumeLevel] New value of volume_level; 1-20000 in hundreds of percents
  final int volumeLevel;

  static const String CONSTRUCTOR =
      'chatEventVideoChatParticipantVolumeLevelChanged';

  static ChatEventVideoChatParticipantVolumeLevelChanged? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventVideoChatParticipantVolumeLevelChanged(
        participantId: MessageSender.fromJson(json['participant_id'])!,
        volumeLevel: json['volume_level']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'participant_id': this.participantId.toJson(),
        'volume_level': this.volumeLevel,
        '@type': CONSTRUCTOR
      };
}
