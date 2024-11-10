import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to an animation player
@immutable
class LinkPreviewTypeEmbeddedAnimationPlayer extends LinkPreviewType {
  const LinkPreviewTypeEmbeddedAnimationPlayer({
    required this.url,
    this.thumbnail,
    required this.duration,
    required this.width,
    required this.height,
  });

  /// [url] URL of the external animation player
  final String url;

  /// [thumbnail] Thumbnail of the animation; may be null if unknown
  final Photo? thumbnail;

  /// [duration] Duration of the animation, in seconds
  final int duration;

  /// [width] Expected width of the embedded player
  final int width;

  /// [height] Expected height of the embedded player
  final int height;

  static const String constructor = 'linkPreviewTypeEmbeddedAnimationPlayer';

  static LinkPreviewTypeEmbeddedAnimationPlayer? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeEmbeddedAnimationPlayer(
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
