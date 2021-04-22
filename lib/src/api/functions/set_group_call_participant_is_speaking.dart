import '../tdapi.dart';

/// Informs TDLib that a group call participant speaking state has changed
/// Returns [Ok]
class SetGroupCallParticipantIsSpeaking extends TdFunction {
  SetGroupCallParticipantIsSpeaking(
      {required this.groupCallId,
      required this.source,
      required this.isSpeaking});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [source] Group call participant's synchronization source identifier, or 0
  /// for the current user
  final int source;

  /// [isSpeaking] True, if the user is speaking
  final bool isSpeaking;

  static const String CONSTRUCTOR = 'setGroupCallParticipantIsSpeaking';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'source': this.source,
        'is_speaking': this.isSpeaking,
        '@type': CONSTRUCTOR
      };
}
