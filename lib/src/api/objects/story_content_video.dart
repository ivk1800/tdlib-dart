import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video story
@immutable
class StoryContentVideo extends StoryContent {
  const StoryContentVideo({
    required this.video,
    this.alternativeVideo,
  });

  /// [video] The video in MPEG4 format
  final StoryVideo video;

  /// [alternativeVideo] Alternative version of the video in MPEG4 format,
  /// encoded with H.264 codec; may be null
  final StoryVideo? alternativeVideo;

  static const String constructor = 'storyContentVideo';

  static StoryContentVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoryContentVideo(
      video: StoryVideo.fromJson(json['video'] as Map<String, dynamic>?)!,
      alternativeVideo: StoryVideo.fromJson(
          json['alternative_video'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        'alternative_video': alternativeVideo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
