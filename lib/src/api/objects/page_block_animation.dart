import '../tdapi.dart';

/// An animation
class PageBlockAnimation extends PageBlock {
  PageBlockAnimation(
      {this.animation, required this.caption, required this.needAutoplay});

  /// [animation] Animation file; may be null
  final Animation? animation;

  /// [caption] Animation caption
  final PageBlockCaption caption;

  /// [needAutoplay] True, if the animation must be played automatically
  final bool needAutoplay;

  static const String CONSTRUCTOR = 'pageBlockAnimation';

  static PageBlockAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAnimation(
        animation: Animation.fromJson(json['animation']),
        caption: PageBlockCaption.fromJson(json['caption'])!,
        needAutoplay: json['need_autoplay']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'animation': this.animation?.toJson(),
        'caption': this.caption.toJson(),
        'need_autoplay': this.needAutoplay,
        '@type': CONSTRUCTOR
      };
}
