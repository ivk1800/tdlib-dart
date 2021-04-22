import '../tdapi.dart';

/// Describes an animation file. The animation must be encoded in GIF or MPEG4
/// format
class Animation extends TdObject {
  Animation(
      {required this.duration,
      required this.width,
      required this.height,
      required this.fileName,
      required this.mimeType,
      required this.hasStickers,
      this.minithumbnail,
      this.thumbnail,
      required this.animation});

  /// [duration] Duration of the animation, in seconds; as defined by the sender
  ///
  final int duration;

  /// [width] Width of the animation
  final int width;

  /// [height] Height of the animation
  final int height;

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] MIME type of the file, usually "image/gif" or "video/mp4"
  final String mimeType;

  /// [hasStickers] True, if stickers were added to the animation. The list of
  /// corresponding sticker set can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [minithumbnail] Animation minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Animation thumbnail in JPEG or MPEG4 format; may be null
  final Thumbnail? thumbnail;

  /// [animation] File containing the animation
  final File animation;

  static const String CONSTRUCTOR = 'animation';

  static Animation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Animation(
        duration: json['duration'],
        width: json['width'],
        height: json['height'],
        fileName: json['file_name'],
        mimeType: json['mime_type'],
        hasStickers: json['has_stickers'],
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
        thumbnail: Thumbnail.fromJson(json['thumbnail']),
        animation: File.fromJson(json['animation'])!);
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
        'minithumbnail': this.minithumbnail?.toJson(),
        'thumbnail': this.thumbnail?.toJson(),
        'animation': this.animation.toJson(),
        '@type': CONSTRUCTOR
      };
}
