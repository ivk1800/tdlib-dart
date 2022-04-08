import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether a group call participant hand is rased
/// Returns [Ok]
@immutable
class ToggleGroupCallParticipantIsHandRaised extends TdFunction {
  const ToggleGroupCallParticipantIsHandRaised({
    required this.groupCallId,
    required this.participantId,
    required this.isHandRaised,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [participantId] Participant identifier
  final MessageSender participantId;

  /// [isHandRaised] Pass true if the user's hand needs to be raised. Only self
  /// hand can be raised. Requires groupCall.can_be_managed group call flag to
  /// lower other's hand
  final bool isHandRaised;

  static const String constructor = 'toggleGroupCallParticipantIsHandRaised';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'participant_id': participantId.toJson(),
        'is_hand_raised': isHandRaised,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
