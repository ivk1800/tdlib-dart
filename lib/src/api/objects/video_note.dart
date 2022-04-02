import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a video note. The video must be equal in width and height,
/// cropped to a circle, and stored in MPEG4 format
class VideoNote extends TdObject {
  VideoNote(
      {required this.duration,
      required this.length,
      this.minithumbnail,
      this.thumbnail,
      required this.video});

  /// [duration] Duration of the video, in seconds; as defined by the sender
  final int duration;

  /// [length] Video width and height; as defined by the sender
  final int length;

  /// [minithumbnail] Video minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [thumbnail] Video thumbnail in JPEG format; as defined by the sender; may
  /// be null
  final Thumbnail? thumbnail;

  /// [video] File containing the video
  final File video;

  static const String CONSTRUCTOR = 'videoNote';

  static VideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoNote(
        duration: json['duration'],
        length: json['length'],
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
        thumbnail: Thumbnail.fromJson(json['thumbnail']),
        video: File.fromJson(json['video'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'duration': this.duration,
        'length': this.length,
        'minithumbnail': this.minithumbnail?.toJson(),
        'thumbnail': this.thumbnail?.toJson(),
        'video': this.video.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
