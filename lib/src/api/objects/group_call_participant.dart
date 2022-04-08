import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a group call participant
@immutable
class GroupCallParticipant extends TdObject {
  const GroupCallParticipant({
    required this.participantId,
    required this.audioSourceId,
    required this.screenSharingAudioSourceId,
    this.videoInfo,
    this.screenSharingVideoInfo,
    required this.bio,
    required this.isCurrentUser,
    required this.isSpeaking,
    required this.isHandRaised,
    required this.canBeMutedForAllUsers,
    required this.canBeUnmutedForAllUsers,
    required this.canBeMutedForCurrentUser,
    required this.canBeUnmutedForCurrentUser,
    required this.isMutedForAllUsers,
    required this.isMutedForCurrentUser,
    required this.canUnmuteSelf,
    required this.volumeLevel,
    required this.order,
  });

  /// [participantId] Identifier of the group call participant
  final MessageSender participantId;

  /// [audioSourceId] User's audio channel synchronization source identifier
  final int audioSourceId;

  /// [screenSharingAudioSourceId] User's screen sharing audio channel
  /// synchronization source identifier
  final int screenSharingAudioSourceId;

  /// [videoInfo] Information about user's video channel; may be null if there
  /// is no active video
  final GroupCallParticipantVideoInfo? videoInfo;

  /// [screenSharingVideoInfo] Information about user's screen sharing video
  /// channel; may be null if there is no active screen sharing video
  final GroupCallParticipantVideoInfo? screenSharingVideoInfo;

  /// [bio] The participant user's bio or the participant chat's description
  final String bio;

  /// [isCurrentUser] True, if the participant is the current user
  final bool isCurrentUser;

  /// [isSpeaking] True, if the participant is speaking as set by
  /// setGroupCallParticipantIsSpeaking
  final bool isSpeaking;

  /// [isHandRaised] True, if the participant hand is raised
  final bool isHandRaised;

  /// [canBeMutedForAllUsers] True, if the current user can mute the participant
  /// for all other group call participants
  final bool canBeMutedForAllUsers;

  /// [canBeUnmutedForAllUsers] True, if the current user can allow the
  /// participant to unmute themselves or unmute the participant (if the
  /// participant is the current user)
  final bool canBeUnmutedForAllUsers;

  /// [canBeMutedForCurrentUser] True, if the current user can mute the
  /// participant only for self
  final bool canBeMutedForCurrentUser;

  /// [canBeUnmutedForCurrentUser] True, if the current user can unmute the
  /// participant for self
  final bool canBeUnmutedForCurrentUser;

  /// [isMutedForAllUsers] True, if the participant is muted for all users
  final bool isMutedForAllUsers;

  /// [isMutedForCurrentUser] True, if the participant is muted for the current
  /// user
  final bool isMutedForCurrentUser;

  /// [canUnmuteSelf] True, if the participant is muted for all users, but can
  /// unmute themselves
  final bool canUnmuteSelf;

  /// [volumeLevel] Participant's volume level; 1-20000 in hundreds of percents
  final int volumeLevel;

  /// [order] User's order in the group call participant list. Orders must be
  /// compared lexicographically. The bigger is order, the higher is user in the
  /// list. If order is empty, the user must be removed from the participant
  /// list
  final String order;

  static const String constructor = 'groupCallParticipant';

  static GroupCallParticipant? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallParticipant(
      participantId: MessageSender.fromJson(json['participant_id'])!,
      audioSourceId: json['audio_source_id'],
      screenSharingAudioSourceId: json['screen_sharing_audio_source_id'],
      videoInfo: GroupCallParticipantVideoInfo.fromJson(json['video_info']),
      screenSharingVideoInfo: GroupCallParticipantVideoInfo.fromJson(
          json['screen_sharing_video_info']),
      bio: json['bio'],
      isCurrentUser: json['is_current_user'],
      isSpeaking: json['is_speaking'],
      isHandRaised: json['is_hand_raised'],
      canBeMutedForAllUsers: json['can_be_muted_for_all_users'],
      canBeUnmutedForAllUsers: json['can_be_unmuted_for_all_users'],
      canBeMutedForCurrentUser: json['can_be_muted_for_current_user'],
      canBeUnmutedForCurrentUser: json['can_be_unmuted_for_current_user'],
      isMutedForAllUsers: json['is_muted_for_all_users'],
      isMutedForCurrentUser: json['is_muted_for_current_user'],
      canUnmuteSelf: json['can_unmute_self'],
      volumeLevel: json['volume_level'],
      order: json['order'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'participant_id': participantId.toJson(),
        'audio_source_id': audioSourceId,
        'screen_sharing_audio_source_id': screenSharingAudioSourceId,
        'video_info': videoInfo?.toJson(),
        'screen_sharing_video_info': screenSharingVideoInfo?.toJson(),
        'bio': bio,
        'is_current_user': isCurrentUser,
        'is_speaking': isSpeaking,
        'is_hand_raised': isHandRaised,
        'can_be_muted_for_all_users': canBeMutedForAllUsers,
        'can_be_unmuted_for_all_users': canBeUnmutedForAllUsers,
        'can_be_muted_for_current_user': canBeMutedForCurrentUser,
        'can_be_unmuted_for_current_user': canBeUnmutedForCurrentUser,
        'is_muted_for_all_users': isMutedForAllUsers,
        'is_muted_for_current_user': isMutedForCurrentUser,
        'can_unmute_self': canUnmuteSelf,
        'volume_level': volumeLevel,
        'order': order,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
