import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video story
@immutable
class InputStoryContentVideo extends InputStoryContent {
  const InputStoryContentVideo({
    required this.video,
    required this.addedStickerFileIds,
    required this.duration,
    required this.coverFrameTimestamp,
    required this.isAnimation,
  });

  /// [video] Video to be sent. The video size must be 720x1280. The video must
  /// be streamable and stored in MPEG4 format, after encoding with H.265 codec
  /// and key frames added each second
  final InputFile video;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video,
  /// if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Precise duration of the video, in seconds; 0-60
  final double duration;

  /// [coverFrameTimestamp] Timestamp of the frame, which will be used as video
  /// thumbnail
  final double coverFrameTimestamp;

  /// [isAnimation] True, if the video has no sound
  final bool isAnimation;

  static const String constructor = 'inputStoryContentVideo';

  static InputStoryContentVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryContentVideo(
      video: InputFile.fromJson(json['video'] as Map<String, dynamic>?)!,
      addedStickerFileIds: List<int>.from(
          ((json['added_sticker_file_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      duration: (json['duration'] as num).toDouble(),
      coverFrameTimestamp: (json['cover_frame_timestamp'] as num).toDouble(),
      isAnimation: json['is_animation'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        'added_sticker_file_ids':
            addedStickerFileIds.map((item) => item).toList(),
        'duration': duration,
        'cover_frame_timestamp': coverFrameTimestamp,
        'is_animation': isAnimation,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
