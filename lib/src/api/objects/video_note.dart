import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a video note. The video must be equal in width and height,
/// cropped to a circle, and stored in MPEG4 format
@immutable
class VideoNote extends TdObject {
  const VideoNote({
    required this.duration,
    required this.length,
    this.minithumbnail,
    this.thumbnail,
    required this.video,
  });

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

  static const String constructor = 'videoNote';

  static VideoNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoNote(
      duration: json['duration'],
      length: json['length'],
      minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
      thumbnail: Thumbnail.fromJson(json['thumbnail']),
      video: File.fromJson(json['video'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duration': duration,
        'length': length,
        'minithumbnail': minithumbnail?.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'video': video.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
