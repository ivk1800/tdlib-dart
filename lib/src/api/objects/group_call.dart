import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a group call
class GroupCall extends TdObject {
  GroupCall(
      {required this.id,
      required this.title,
      required this.scheduledStartDate,
      required this.enabledStartNotification,
      required this.isActive,
      required this.isJoined,
      required this.needRejoin,
      required this.canBeManaged,
      required this.participantCount,
      required this.loadedAllParticipants,
      required this.recentSpeakers,
      required this.isMyVideoEnabled,
      required this.isMyVideoPaused,
      required this.canEnableVideo,
      required this.muteNewParticipants,
      required this.canToggleMuteNewParticipants,
      required this.recordDuration,
      required this.isVideoRecorded,
      required this.duration});

  /// [id] Group call identifier
  final int id;

  /// [title] Group call title
  final String title;

  /// [scheduledStartDate] Point in time (Unix timestamp) when the group call is
  /// supposed to be started by an administrator; 0 if it is already active or
  /// was ended
  final int scheduledStartDate;

  /// [enabledStartNotification] True, if the group call is scheduled and the
  /// current user will receive a notification when the group call will start
  final bool enabledStartNotification;

  /// [isActive] True, if the call is active
  final bool isActive;

  /// [isJoined] True, if the call is joined
  final bool isJoined;

  /// [needRejoin] True, if user was kicked from the call because of network
  /// loss and the call needs to be rejoined
  final bool needRejoin;

  /// [canBeManaged] True, if the current user can manage the group call
  final bool canBeManaged;

  /// [participantCount] Number of participants in the group call
  final int participantCount;

  /// [loadedAllParticipants] True, if all group call participants are loaded
  final bool loadedAllParticipants;

  /// [recentSpeakers] At most 3 recently speaking users in the group call
  final List<GroupCallRecentSpeaker> recentSpeakers;

  /// [isMyVideoEnabled] True, if the current user's video is enabled
  final bool isMyVideoEnabled;

  /// [isMyVideoPaused] True, if the current user's video is paused
  final bool isMyVideoPaused;

  /// [canEnableVideo] True, if the current user can broadcast video or share
  /// screen
  final bool canEnableVideo;

  /// [muteNewParticipants] True, if only group call administrators can unmute
  /// new participants
  final bool muteNewParticipants;

  /// [canToggleMuteNewParticipants] True, if the current user can enable or
  /// disable mute_new_participants setting
  final bool canToggleMuteNewParticipants;

  /// [recordDuration] Duration of the ongoing group call recording, in seconds;
  /// 0 if none. An updateGroupCall update is not triggered when value of this
  /// field changes, but the same recording goes on
  final int recordDuration;

  /// [isVideoRecorded] True, if a video file is being recorded for the call
  final bool isVideoRecorded;

  /// [duration] Call duration, in seconds; for ended calls only
  final int duration;

  static const String CONSTRUCTOR = 'groupCall';

  static GroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCall(
        id: json['id'],
        title: json['title'],
        scheduledStartDate: json['scheduled_start_date'],
        enabledStartNotification: json['enabled_start_notification'],
        isActive: json['is_active'],
        isJoined: json['is_joined'],
        needRejoin: json['need_rejoin'],
        canBeManaged: json['can_be_managed'],
        participantCount: json['participant_count'],
        loadedAllParticipants: json['loaded_all_participants'],
        recentSpeakers: List<GroupCallRecentSpeaker>.from(
            (json['recent_speakers'] ?? [])
                .map((item) => GroupCallRecentSpeaker.fromJson(item))
                .toList()),
        isMyVideoEnabled: json['is_my_video_enabled'],
        isMyVideoPaused: json['is_my_video_paused'],
        canEnableVideo: json['can_enable_video'],
        muteNewParticipants: json['mute_new_participants'],
        canToggleMuteNewParticipants: json['can_toggle_mute_new_participants'],
        recordDuration: json['record_duration'],
        isVideoRecorded: json['is_video_recorded'],
        duration: json['duration']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'title': this.title,
        'scheduled_start_date': this.scheduledStartDate,
        'enabled_start_notification': this.enabledStartNotification,
        'is_active': this.isActive,
        'is_joined': this.isJoined,
        'need_rejoin': this.needRejoin,
        'can_be_managed': this.canBeManaged,
        'participant_count': this.participantCount,
        'loaded_all_participants': this.loadedAllParticipants,
        'recent_speakers': recentSpeakers.map((item) => item.toJson()).toList(),
        'is_my_video_enabled': this.isMyVideoEnabled,
        'is_my_video_paused': this.isMyVideoPaused,
        'can_enable_video': this.canEnableVideo,
        'mute_new_participants': this.muteNewParticipants,
        'can_toggle_mute_new_participants': this.canToggleMuteNewParticipants,
        'record_duration': this.recordDuration,
        'is_video_recorded': this.isVideoRecorded,
        'duration': this.duration,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
