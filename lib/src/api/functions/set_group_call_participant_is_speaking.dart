import '../tdapi.dart';

/// Informs TDLib that speaking state of a participant of an active group has
/// changed
/// Returns [Ok]
class SetGroupCallParticipantIsSpeaking extends TdFunction {
  SetGroupCallParticipantIsSpeaking(
      {required this.groupCallId,
      required this.audioSource,
      required this.isSpeaking});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [audioSource] Group call participant's synchronization audio source
  /// identifier, or 0 for the current user
  final int audioSource;

  /// [isSpeaking] True, if the user is speaking
  final bool isSpeaking;

  static const String CONSTRUCTOR = 'setGroupCallParticipantIsSpeaking';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'audio_source': this.audioSource,
        'is_speaking': this.isSpeaking,
        '@type': CONSTRUCTOR
      };
}
