import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An animation message (GIF-style).
@immutable
class MessageAnimation extends MessageContent {
  const MessageAnimation({
    required this.animation,
    required this.caption,
    required this.showCaptionAboveMedia,
    required this.hasSpoiler,
    required this.isSecret,
  });

  /// [animation] The animation description
  final Animation animation;

  /// [caption] Animation caption
  final FormattedText caption;

  /// [showCaptionAboveMedia] True, if the caption must be shown above the
  /// animation; otherwise, the caption must be shown below the animation
  final bool showCaptionAboveMedia;

  /// [hasSpoiler] True, if the animation preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  /// [isSecret] True, if the animation thumbnail must be blurred and the
  /// animation must be shown only while tapped
  final bool isSecret;

  static const String constructor = 'messageAnimation';

  static MessageAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAnimation(
      animation:
          Animation.fromJson(json['animation'] as Map<String, dynamic>?)!,
      caption:
          FormattedText.fromJson(json['caption'] as Map<String, dynamic>?)!,
      showCaptionAboveMedia: json['show_caption_above_media'] as bool,
      hasSpoiler: json['has_spoiler'] as bool,
      isSecret: json['is_secret'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animation': animation.toJson(),
        'caption': caption.toJson(),
        'show_caption_above_media': showCaptionAboveMedia,
        'has_spoiler': hasSpoiler,
        'is_secret': isSecret,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
