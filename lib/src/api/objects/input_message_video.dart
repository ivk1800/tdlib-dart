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
    required this.ttl,
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
  /// 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [ttl] Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be
  /// specified only in private chats
  final int ttl;

  static const String constructor = 'inputMessageVideo';

  static InputMessageVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageVideo(
      video: InputFile.fromJson(json['video'])!,
      thumbnail: InputThumbnail.fromJson(json['thumbnail']),
      addedStickerFileIds: List<int>.from(
          (json['added_sticker_file_ids'] ?? []).map((item) => item).toList()),
      duration: json['duration'],
      width: json['width'],
      height: json['height'],
      supportsStreaming: json['supports_streaming'],
      caption: FormattedText.fromJson(json['caption']),
      ttl: json['ttl'],
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
        'ttl': ttl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
