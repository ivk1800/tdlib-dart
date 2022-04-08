import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An animation
@immutable
class PageBlockAnimation extends PageBlock {
  const PageBlockAnimation({
    this.animation,
    required this.caption,
    required this.needAutoplay,
  });

  /// [animation] Animation file; may be null
  final Animation? animation;

  /// [caption] Animation caption
  final PageBlockCaption caption;

  /// [needAutoplay] True, if the animation must be played automatically
  final bool needAutoplay;

  static const String constructor = 'pageBlockAnimation';

  static PageBlockAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAnimation(
      animation: Animation.fromJson(json['animation']),
      caption: PageBlockCaption.fromJson(json['caption'])!,
      needAutoplay: json['need_autoplay'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation': animation?.toJson(),
        'caption': caption.toJson(),
        'need_autoplay': needAutoplay,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
