import '../tdapi.dart';

/// Describes a video file
class Video extends TdObject {
  Video(
      {required this.duration,
      required this.width,
      required this.height,
      required this.fileName,
      required this.mimeType,
      required this.hasStickers,
      required this.supportsStreaming,
      this.minithumbnail,
      this.thumbnail,
      required this.video});

  /// [duration] Duration of the video, in seconds; as defined by the sender
  final int duration;

  /// [width] Video width; as defined by the sender
  final int width;

  /// [height] Video height; as defined by the sender
  final int height;

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] MIME type of the file; as defined by the sender
  final String mimeType;

  /// [hasStickers] True, if stickers were added to the video. The list of
  /// corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [supportsStreaming] True, if the video is supposed to be streamed
  final bool supportsStreaming;

  /// [minithumbnail] Video minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG or MPEG4 format; as defined by the
  /// sender; may be null
  final Thumbnail? thumbnail;

  /// [video] File containing the video
  final File video;

  static const String CONSTRUCTOR = 'video';

  static Video? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Video(
        duration: json['duration'],
        width: json['width'],
        height: json['height'],
        fileName: json['file_name'],
        mimeType: json['mime_type'],
        hasStickers: json['has_stickers'],
        supportsStreaming: json['supports_streaming'],
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
        thumbnail: Thumbnail.fromJson(json['thumbnail']),
        video: File.fromJson(json['video'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'duration': this.duration,
        'width': this.width,
        'height': this.height,
        'file_name': this.fileName,
        'mime_type': this.mimeType,
        'has_stickers': this.hasStickers,
        'supports_streaming': this.supportsStreaming,
        'minithumbnail': this.minithumbnail?.toJson(),
        'thumbnail': this.thumbnail?.toJson(),
        'video': this.video.toJson(),
        '@type': CONSTRUCTOR
      };
}
