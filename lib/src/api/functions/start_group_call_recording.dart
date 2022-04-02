import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Starts recording of an active group call. Requires
/// groupCall.can_be_managed group call flag
/// Returns [Ok]
class StartGroupCallRecording extends TdFunction {
  StartGroupCallRecording(
      {required this.groupCallId,
      required this.title,
      required this.recordVideo,
      required this.usePortraitOrientation});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [title] Group call recording title; 0-64 characters
  final String title;

  /// [recordVideo] Pass true to record a video file instead of an audio file
  final bool recordVideo;

  /// [usePortraitOrientation] Pass true to use portrait orientation for video
  /// instead of landscape one
  final bool usePortraitOrientation;

  static const String CONSTRUCTOR = 'startGroupCallRecording';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'title': this.title,
        'record_video': this.recordVideo,
        'use_portrait_orientation': this.usePortraitOrientation,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
