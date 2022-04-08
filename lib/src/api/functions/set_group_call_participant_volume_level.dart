import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes volume level of a participant of an active group call. If the
/// current user can manage the group call, then the participant's volume
/// level will be changed for all users with the default volume level
/// Returns [Ok]
@immutable
class SetGroupCallParticipantVolumeLevel extends TdFunction {
  const SetGroupCallParticipantVolumeLevel({
    required this.groupCallId,
    required this.participantId,
    required this.volumeLevel,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Participant identifier
  final MessageSender participantId;

  /// [volumeLevel] New participant's volume level; 1-20000 in hundreds of
  /// percents
  final int volumeLevel;

  static const String constructor = 'setGroupCallParticipantVolumeLevel';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'participant_id': participantId.toJson(),
        'volume_level': volumeLevel,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
