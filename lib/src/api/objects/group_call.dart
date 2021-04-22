import '../tdapi.dart';

/// Describes a group call
class GroupCall extends TdObject {
  GroupCall(
      {required this.id,
      required this.title,
      required this.isActive,
      required this.isJoined,
      required this.needRejoin,
      required this.canUnmuteSelf,
      required this.canBeManaged,
      required this.participantCount,
      required this.loadedAllParticipants,
      required this.recentSpeakers,
      required this.muteNewParticipants,
      required this.canChangeMuteNewParticipants,
      required this.recordDuration,
      required this.duration});

  /// [id] Group call identifier
  final int id;

  /// [title] Group call title
  final String title;

  /// [isActive] True, if the call is active
  final bool isActive;

  /// [isJoined] True, if the call is joined
  final bool isJoined;

  /// [needRejoin] True, if user was kicked from the call because of network
  /// loss and the call needs to be rejoined
  final bool needRejoin;

  /// [canUnmuteSelf] True, if the current user can unmute themself
  final bool canUnmuteSelf;

  /// [canBeManaged] True, if the current user can manage the group call
  final bool canBeManaged;

  /// [participantCount] Number of participants in the group call
  final int participantCount;

  /// [loadedAllParticipants] True, if all group call participants are loaded
  final bool loadedAllParticipants;

  /// [recentSpeakers] Recently speaking users in the group call
  final List<GroupCallRecentSpeaker> recentSpeakers;

  /// [muteNewParticipants] True, if only group call administrators can unmute
  /// new participants
  final bool muteNewParticipants;

  /// [canChangeMuteNewParticipants] True, if the current user can enable or
  /// disable mute_new_participants setting
  final bool canChangeMuteNewParticipants;

  /// [recordDuration] Duration of the ongoing group call recording, in seconds;
  /// 0 if none. An updateGroupCall update is not triggered when value of this
  /// field changes, but the same recording goes on
  final int recordDuration;

  /// [duration] Call duration; for ended calls only
  final int duration;

  static const String CONSTRUCTOR = 'groupCall';

  static GroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCall(
        id: json['id'],
        title: json['title'],
        isActive: json['is_active'],
        isJoined: json['is_joined'],
        needRejoin: json['need_rejoin'],
        canUnmuteSelf: json['can_unmute_self'],
        canBeManaged: json['can_be_managed'],
        participantCount: json['participant_count'],
        loadedAllParticipants: json['loaded_all_participants'],
        recentSpeakers: List<GroupCallRecentSpeaker>.from(
            (json['recent_speakers'] ?? [])
                .map((item) => GroupCallRecentSpeaker.fromJson(item))
                .toList()),
        muteNewParticipants: json['mute_new_participants'],
        canChangeMuteNewParticipants: json['can_change_mute_new_participants'],
        recordDuration: json['record_duration'],
        duration: json['duration']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'title': this.title,
        'is_active': this.isActive,
        'is_joined': this.isJoined,
        'need_rejoin': this.needRejoin,
        'can_unmute_self': this.canUnmuteSelf,
        'can_be_managed': this.canBeManaged,
        'participant_count': this.participantCount,
        'loaded_all_participants': this.loadedAllParticipants,
        'recent_speakers': recentSpeakers.map((item) => item.toJson()).toList(),
        'mute_new_participants': this.muteNewParticipants,
        'can_change_mute_new_participants': this.canChangeMuteNewParticipants,
        'record_duration': this.recordDuration,
        'duration': this.duration,
        '@type': CONSTRUCTOR
      };
}
