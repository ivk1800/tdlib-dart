import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a video chat
@immutable
class VideoChat extends TdObject {
  const VideoChat({
    required this.groupCallId,
    required this.hasParticipants,
    this.defaultParticipantId,
  });

  /// [groupCallId] Group call identifier of an active video chat; 0 if none.
  /// Full information about the video chat can be received through the method
  /// getGroupCall
  final int groupCallId;

  /// [hasParticipants] True, if the video chat has participants
  final bool hasParticipants;

  /// [defaultParticipantId] Default group call participant identifier to join
  /// the video chat; may be null
  final MessageSender? defaultParticipantId;

  static const String constructor = 'videoChat';

  static VideoChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoChat(
      groupCallId: json['group_call_id'],
      hasParticipants: json['has_participants'],
      defaultParticipantId:
          MessageSender.fromJson(json['default_participant_id']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'has_participants': hasParticipants,
        'default_participant_id': defaultParticipantId?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
