import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether a participant of an active group call is muted, unmuted,
/// or allowed to unmute themselves
/// Returns [Ok]
@immutable
class ToggleGroupCallParticipantIsMuted extends TdFunction {
  const ToggleGroupCallParticipantIsMuted({
    required this.groupCallId,
    required this.participantId,
    required this.isMuted,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Participant identifier
  final MessageSender participantId;

  /// [isMuted] Pass true to mute the user; pass false to unmute them
  final bool isMuted;

  static const String constructor = 'toggleGroupCallParticipantIsMuted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'participant_id': participantId.toJson(),
        'is_muted': isMuted,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
