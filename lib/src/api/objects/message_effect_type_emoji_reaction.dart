import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An effect from an emoji reaction
@immutable
class MessageEffectTypeEmojiReaction extends MessageEffectType {
  const MessageEffectTypeEmojiReaction({
    required this.selectAnimation,
    required this.effectAnimation,
  });

  /// [selectAnimation] Select animation for the effect in TGS format
  final Sticker selectAnimation;

  /// [effectAnimation] Effect animation for the effect in TGS format
  final Sticker effectAnimation;

  static const String constructor = 'messageEffectTypeEmojiReaction';

  static MessageEffectTypeEmojiReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageEffectTypeEmojiReaction(
      selectAnimation:
          Sticker.fromJson(json['select_animation'] as Map<String, dynamic>?)!,
      effectAnimation:
          Sticker.fromJson(json['effect_animation'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'select_animation': selectAnimation.toJson(),
        'effect_animation': effectAnimation.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
