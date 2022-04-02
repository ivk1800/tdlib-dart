import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Toggles whether a group call participant hand is rased
/// Returns [Ok]
class ToggleGroupCallParticipantIsHandRaised extends TdFunction {
  ToggleGroupCallParticipantIsHandRaised(
      {required this.groupCallId,
      required this.participantId,
      required this.isHandRaised});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Participant identifier
  final MessageSender participantId;

  /// [isHandRaised] Pass true if the user's hand needs to be raised. Only self
  /// hand can be raised. Requires groupCall.can_be_managed group call flag to
  /// lower other's hand
  final bool isHandRaised;

  static const String CONSTRUCTOR = 'toggleGroupCallParticipantIsHandRaised';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'participant_id': this.participantId.toJson(),
        'is_hand_raised': this.isHandRaised,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
