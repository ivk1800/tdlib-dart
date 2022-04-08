import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A video
@immutable
class PageBlockVideo extends PageBlock {
  const PageBlockVideo({
    this.video,
    required this.caption,
    required this.needAutoplay,
    required this.isLooped,
  });

  /// [video] Video file; may be null
  final Video? video;

  /// [caption] Video caption
  final PageBlockCaption caption;

  /// [needAutoplay] True, if the video must be played automatically
  final bool needAutoplay;

  /// [isLooped] True, if the video must be looped
  final bool isLooped;

  static const String constructor = 'pageBlockVideo';

  static PageBlockVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockVideo(
      video: Video.fromJson(json['video']),
      caption: PageBlockCaption.fromJson(json['caption'])!,
      needAutoplay: json['need_autoplay'],
      isLooped: json['is_looped'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'video': video?.toJson(),
        'caption': caption.toJson(),
        'need_autoplay': needAutoplay,
        'is_looped': isLooped,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
