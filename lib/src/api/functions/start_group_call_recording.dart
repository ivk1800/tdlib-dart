import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Starts recording of an active group call. Requires
/// groupCall.can_be_managed group call flag
/// Returns [Ok]
@immutable
class StartGroupCallRecording extends TdFunction {
  const StartGroupCallRecording({
    required this.groupCallId,
    required this.title,
    required this.recordVideo,
    required this.usePortraitOrientation,
  });

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [title] Group call recording title; 0-64 characters
  final String title;

  /// [recordVideo] Pass true to record a video file instead of an audio file
  final bool recordVideo;

  /// [usePortraitOrientation] Pass true to use portrait orientation for video
  /// instead of landscape one
  final bool usePortraitOrientation;

  static const String constructor = 'startGroupCallRecording';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'group_call_id': groupCallId,
        'title': title,
        'record_video': recordVideo,
        'use_portrait_orientation': usePortraitOrientation,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
