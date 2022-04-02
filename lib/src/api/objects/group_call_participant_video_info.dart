import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about a group call participant's video channel
class GroupCallParticipantVideoInfo extends TdObject {
  GroupCallParticipantVideoInfo(
      {required this.sourceGroups,
      required this.endpointId,
      required this.isPaused});

  /// [sourceGroups] List of synchronization source groups of the video
  final List<GroupCallVideoSourceGroup> sourceGroups;

  /// [endpointId] Video channel endpoint identifier
  final String endpointId;

  /// [isPaused] True if the video is paused. This flag needs to be ignored, if
  /// new video frames are received
  final bool isPaused;

  static const String CONSTRUCTOR = 'groupCallParticipantVideoInfo';

  static GroupCallParticipantVideoInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallParticipantVideoInfo(
        sourceGroups: List<GroupCallVideoSourceGroup>.from(
            (json['source_groups'] ?? [])
                .map((item) => GroupCallVideoSourceGroup.fromJson(item))
                .toList()),
        endpointId: json['endpoint_id'],
        isPaused: json['is_paused']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'source_groups': sourceGroups.map((item) => item.toJson()).toList(),
        'endpoint_id': this.endpointId,
        'is_paused': this.isPaused,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
