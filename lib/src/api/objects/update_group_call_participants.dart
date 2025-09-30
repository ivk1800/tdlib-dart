import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of group call participants that can send and receive encrypted
/// call data has changed; for group calls not bound to a chat only
@immutable
class UpdateGroupCallParticipants extends Update {
  const UpdateGroupCallParticipants({
    required this.groupCallId,
    required this.participantUserIds,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [participantUserIds] New list of group call participant user identifiers.
  /// The identifiers may be invalid or the corresponding users may be unknown.
  /// The participants must be shown in the list of group call participants even
  /// if there is no information about them
  final List<int> participantUserIds;

  static const String constructor = 'updateGroupCallParticipants';

  static UpdateGroupCallParticipants? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallParticipants(
      groupCallId: json['group_call_id'] as int,
      participantUserIds: List<int>.from(
        ((json['participant_user_ids'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => item)
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'participant_user_ids': participantUserIds.map((item) => item).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
