import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a video player
@immutable
class LinkPreviewTypeEmbeddedVideoPlayer extends LinkPreviewType {
  const LinkPreviewTypeEmbeddedVideoPlayer({
    required this.url,
    this.thumbnail,
    required this.duration,
    required this.width,
    required this.height,
  });

  /// [url] URL of the external video player
  final String url;

  /// [thumbnail] Thumbnail of the video; may be null if unknown
  final Photo? thumbnail;

  /// [duration] Duration of the video, in seconds
  final int duration;

  /// [width] Expected width of the embedded player
  final int width;

  /// [height] Expected height of the embedded player
  final int height;

  static const String constructor = 'linkPreviewTypeEmbeddedVideoPlayer';

  static LinkPreviewTypeEmbeddedVideoPlayer? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeEmbeddedVideoPlayer(
      url: json['url'] as String,
      thumbnail: Photo.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      duration: json['duration'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'thumbnail': thumbnail?.toJson(),
        'duration': duration,
        'width': width,
        'height': height,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
