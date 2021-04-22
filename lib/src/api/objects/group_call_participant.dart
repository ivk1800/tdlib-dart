import '../tdapi.dart';

/// Represents a group call participant
class GroupCallParticipant extends TdObject {
  GroupCallParticipant(
      {required this.participant,
      required this.source,
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
      required this.order});

  /// [participant] Identifier of the group call participant
  final MessageSender participant;

  /// [source] User's synchronization source
  final int source;

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
  /// participant to unmute themself or unmute the participant (if the
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
  /// unmute themself
  final bool canUnmuteSelf;

  /// [volumeLevel] Participant's volume level; 1-20000 in hundreds of percents
  final int volumeLevel;

  /// [order] User's order in the group call participant list. Orders must be
  /// compared lexicographically. The bigger is order, the higher is user in the
  /// list. If order is empty, the user must be removed from the participant
  /// list
  final String order;

  static const String CONSTRUCTOR = 'groupCallParticipant';

  static GroupCallParticipant? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallParticipant(
        participant: MessageSender.fromJson(json['participant'])!,
        source: json['source'],
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
        order: json['order']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'participant': this.participant.toJson(),
        'source': this.source,
        'bio': this.bio,
        'is_current_user': this.isCurrentUser,
        'is_speaking': this.isSpeaking,
        'is_hand_raised': this.isHandRaised,
        'can_be_muted_for_all_users': this.canBeMutedForAllUsers,
        'can_be_unmuted_for_all_users': this.canBeUnmutedForAllUsers,
        'can_be_muted_for_current_user': this.canBeMutedForCurrentUser,
        'can_be_unmuted_for_current_user': this.canBeUnmutedForCurrentUser,
        'is_muted_for_all_users': this.isMutedForAllUsers,
        'is_muted_for_current_user': this.isMutedForCurrentUser,
        'can_unmute_self': this.canUnmuteSelf,
        'volume_level': this.volumeLevel,
        'order': this.order,
        '@type': CONSTRUCTOR
      };
}
