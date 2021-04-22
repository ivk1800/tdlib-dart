import '../tdapi.dart';

/// Describes a voice chat
class VoiceChat extends TdObject {
  VoiceChat(
      {required this.groupCallId,
      required this.hasParticipants,
      this.defaultParticipantAlias});

  /// [groupCallId] Group call identifier of an active voice chat; 0 if none.
  /// Full informationa about the voice chat can be received through the method
  /// getGroupCall
  final int groupCallId;

  /// [hasParticipants] True, if the voice chat has participants
  final bool hasParticipants;

  /// [defaultParticipantAlias] Default group call participant identifier to
  /// join the voice chat; may be null
  final MessageSender? defaultParticipantAlias;

  static const String CONSTRUCTOR = 'voiceChat';

  static VoiceChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VoiceChat(
        groupCallId: json['group_call_id'],
        hasParticipants: json['has_participants'],
        defaultParticipantAlias:
            MessageSender.fromJson(json['default_participant_alias']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'has_participants': this.hasParticipants,
        'default_participant_alias': this.defaultParticipantAlias?.toJson(),
        '@type': CONSTRUCTOR
      };
}
