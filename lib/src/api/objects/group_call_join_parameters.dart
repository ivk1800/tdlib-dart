import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes parameters used to join a group call
@immutable
class GroupCallJoinParameters extends TdObject {
  const GroupCallJoinParameters({
    required this.audioSourceId,
    required this.payload,
    required this.isMuted,
    required this.isMyVideoEnabled,
  });

  /// [audioSourceId] Audio channel synchronization source identifier; received
  /// from tgcalls
  final int audioSourceId;

  /// [payload] Group call join payload; received from tgcalls
  final String payload;

  /// [isMuted] Pass true to join the call with muted microphone
  final bool isMuted;

  /// [isMyVideoEnabled] Pass true if the user's video is enabled
  final bool isMyVideoEnabled;

  static const String constructor = 'groupCallJoinParameters';

  static GroupCallJoinParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallJoinParameters(
      audioSourceId: json['audio_source_id'] as int,
      payload: json['payload'] as String,
      isMuted: json['is_muted'] as bool,
      isMyVideoEnabled: json['is_my_video_enabled'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'audio_source_id': audioSourceId,
    'payload': payload,
    'is_muted': isMuted,
    'is_my_video_enabled': isMyVideoEnabled,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
