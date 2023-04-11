import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a recently speaking participant in a group call
@immutable
class GroupCallRecentSpeaker extends TdObject {
  const GroupCallRecentSpeaker({
    required this.participantId,
    required this.isSpeaking,
  });

  /// [participantId] Group call participant identifier
  final MessageSender participantId;

  /// [isSpeaking] True, is the user has spoken recently
  final bool isSpeaking;

  static const String constructor = 'groupCallRecentSpeaker';

  static GroupCallRecentSpeaker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallRecentSpeaker(
      participantId: MessageSender.fromJson(
          json['participant_id'] as Map<String, dynamic>?)!,
      isSpeaking: json['is_speaking'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'participant_id': participantId.toJson(),
        'is_speaking': isSpeaking,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
