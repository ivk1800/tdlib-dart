import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that speaking state of a participant of an active group has
/// changed
/// Returns [Ok]
@immutable
class SetGroupCallParticipantIsSpeaking extends TdFunction {
  const SetGroupCallParticipantIsSpeaking({
    required this.groupCallId,
    required this.audioSource,
    required this.isSpeaking,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [audioSource] Group call participant's synchronization audio source
  /// identifier, or 0 for the current user
  final int audioSource;

  /// [isSpeaking] True, if the user is speaking
  final bool isSpeaking;

  static const String constructor = 'setGroupCallParticipantIsSpeaking';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'audio_source': audioSource,
        'is_speaking': isSpeaking,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
