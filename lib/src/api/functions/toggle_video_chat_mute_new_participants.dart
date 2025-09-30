import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether new participants of a video chat can be unmuted only by
/// administrators of the video chat. Requires
/// groupCall.can_toggle_mute_new_participants right
/// Returns [Ok]
@immutable
class ToggleVideoChatMuteNewParticipants extends TdFunction {
  const ToggleVideoChatMuteNewParticipants({
    required this.groupCallId,
    required this.muteNewParticipants,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [muteNewParticipants] New value of the mute_new_participants setting
  final bool muteNewParticipants;

  static const String constructor = 'toggleVideoChatMuteNewParticipants';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'mute_new_participants': muteNewParticipants,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
