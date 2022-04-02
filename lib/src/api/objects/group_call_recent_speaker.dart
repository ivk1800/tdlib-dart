import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a recently speaking participant in a group call
class GroupCallRecentSpeaker extends TdObject {
  GroupCallRecentSpeaker(
      {required this.participantId, required this.isSpeaking});

  /// [participantId] Group call participant identifier
  final MessageSender participantId;

  /// [isSpeaking] True, is the user has spoken recently
  final bool isSpeaking;

  static const String CONSTRUCTOR = 'groupCallRecentSpeaker';

  static GroupCallRecentSpeaker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallRecentSpeaker(
        participantId: MessageSender.fromJson(json['participant_id'])!,
        isSpeaking: json['is_speaking']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'participant_id': this.participantId.toJson(),
        'is_speaking': this.isSpeaking,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
