import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video message
@immutable
class InputMessageVideo extends InputMessageContent {
  const InputMessageVideo({
    required this.video,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.duration,
    required this.width,
    required this.height,
    required this.supportsStreaming,
    this.caption,
    required this.selfDestructTime,
    required this.hasSpoiler,
  });

  /// [video] Video to be sent
  final InputFile video;

  /// [thumbnail] Video thumbnail; pass null to skip thumbnail uploading
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video,
  /// if applicable
  final List<int> addedStickerFileIds;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [width] Video width
  final int width;

  /// [height] Video height
  final int height;

  /// [supportsStreaming] True, if the video is supposed to be streamed
  final bool supportsStreaming;

  /// [caption] Video caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [selfDestructTime] Video self-destruct time, in seconds (0-60). A non-zero
  /// self-destruct time can be specified only in private chats
  final int selfDestructTime;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler
  /// animation; not supported in secret chats
  final bool hasSpoiler;

  static const String constructor = 'inputMessageVideo';

  static InputMessageVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVideo(
      video: InputFile.fromJson(json['video'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      addedStickerFileIds: List<int>.from(
          ((json['added_sticker_file_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      duration: json['duration'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
      supportsStreaming: json['supports_streaming'] as bool,
      caption: FormattedText.fromJson(json['caption'] as Map<String, dynamic>?),
      selfDestructTime: json['self_destruct_time'] as int,
      hasSpoiler: json['has_spoiler'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'added_sticker_file_ids':
            addedStickerFileIds.map((item) => item).toList(),
        'duration': duration,
        'width': width,
        'height': height,
        'supports_streaming': supportsStreaming,
        'caption': caption?.toJson(),
        'self_destruct_time': selfDestructTime,
        'has_spoiler': hasSpoiler,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
