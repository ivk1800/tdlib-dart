import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Information about a group call participant was changed. The updates are
/// sent only after the group call is received through getGroupCall and only
/// if the call is joined or being joined
@immutable
class UpdateGroupCallParticipant extends Update {
  const UpdateGroupCallParticipant({
    required this.groupCallId,
    required this.participant,
  });

  /// [groupCallId] Identifier of group call
  final int groupCallId;

  /// [participant] New data about a participant
  final GroupCallParticipant participant;

  static const String constructor = 'updateGroupCallParticipant';

  static UpdateGroupCallParticipant? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallParticipant(
      groupCallId: json['group_call_id'] as int,
      participant: GroupCallParticipant.fromJson(
          json['participant'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'participant': participant.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
