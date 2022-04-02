import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a video chat
class VideoChat extends TdObject {
  VideoChat(
      {required this.groupCallId,
      required this.hasParticipants,
      this.defaultParticipantId});

  /// [groupCallId] Group call identifier of an active video chat; 0 if none.
  /// Full information about the video chat can be received through the method
  /// getGroupCall
  final int groupCallId;

  /// [hasParticipants] True, if the video chat has participants
  final bool hasParticipants;

  /// [defaultParticipantId] Default group call participant identifier to join
  /// the video chat; may be null
  final MessageSender? defaultParticipantId;

  static const String CONSTRUCTOR = 'videoChat';

  static VideoChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoChat(
        groupCallId: json['group_call_id'],
        hasParticipants: json['has_participants'],
        defaultParticipantId:
            MessageSender.fromJson(json['default_participant_id']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'has_participants': this.hasParticipants,
        'default_participant_id': this.defaultParticipantId?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
