import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An animation message (GIF-style).
class MessageAnimation extends MessageContent {
  MessageAnimation(
      {required this.animation, required this.caption, required this.isSecret});

  /// [animation] The animation description
  final Animation animation;

  /// [caption] Animation caption
  final FormattedText caption;

  /// [isSecret] True, if the animation thumbnail must be blurred and the
  /// animation must be shown only while tapped
  final bool isSecret;

  static const String CONSTRUCTOR = 'messageAnimation';

  static MessageAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageAnimation(
        animation: Animation.fromJson(json['animation'])!,
        caption: FormattedText.fromJson(json['caption'])!,
        isSecret: json['is_secret']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'animation': this.animation.toJson(),
        'caption': this.caption.toJson(),
        'is_secret': this.isSecret,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
