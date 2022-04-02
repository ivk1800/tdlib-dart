import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A video
class PageBlockVideo extends PageBlock {
  PageBlockVideo(
      {this.video,
      required this.caption,
      required this.needAutoplay,
      required this.isLooped});

  /// [video] Video file; may be null
  final Video? video;

  /// [caption] Video caption
  final PageBlockCaption caption;

  /// [needAutoplay] True, if the video must be played automatically
  final bool needAutoplay;

  /// [isLooped] True, if the video must be looped
  final bool isLooped;

  static const String CONSTRUCTOR = 'pageBlockVideo';

  static PageBlockVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockVideo(
        video: Video.fromJson(json['video']),
        caption: PageBlockCaption.fromJson(json['caption'])!,
        needAutoplay: json['need_autoplay'],
        isLooped: json['is_looped']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'video': this.video?.toJson(),
        'caption': this.caption.toJson(),
        'need_autoplay': this.needAutoplay,
        'is_looped': this.isLooped,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
