import '../tdapi.dart';

/// Describes a recently speaking participant in a group call
class GroupCallRecentSpeaker extends TdObject {
  GroupCallRecentSpeaker({required this.speaker, required this.isSpeaking});

  /// [speaker] Speaking participantt
  final MessageSender speaker;

  /// [isSpeaking] True, is the user has spoken recently
  final bool isSpeaking;

  static const String CONSTRUCTOR = 'groupCallRecentSpeaker';

  static GroupCallRecentSpeaker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallRecentSpeaker(
        speaker: MessageSender.fromJson(json['speaker'])!,
        isSpeaking: json['is_speaking']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'speaker': this.speaker.toJson(),
        'is_speaking': this.isSpeaking,
        '@type': CONSTRUCTOR
      };
}
