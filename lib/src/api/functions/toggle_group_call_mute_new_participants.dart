import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Toggles whether new participants of a group call can be unmuted only by
/// administrators of the group call. Requires
/// groupCall.can_toggle_mute_new_participants group call flag
/// Returns [Ok]
class ToggleGroupCallMuteNewParticipants extends TdFunction {
  ToggleGroupCallMuteNewParticipants(
      {required this.groupCallId, required this.muteNewParticipants});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [muteNewParticipants] New value of the mute_new_participants setting
  final bool muteNewParticipants;

  static const String CONSTRUCTOR = 'toggleGroupCallMuteNewParticipants';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'mute_new_participants': this.muteNewParticipants,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
