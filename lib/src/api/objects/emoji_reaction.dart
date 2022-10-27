import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a emoji reaction
@immutable
class EmojiReaction extends TdObject {
  const EmojiReaction({
    required this.emoji,
    required this.title,
    required this.isActive,
    required this.staticIcon,
    required this.appearAnimation,
    required this.selectAnimation,
    required this.activateAnimation,
    required this.effectAnimation,
    this.aroundAnimation,
    this.centerAnimation,
  });

  /// [emoji] Text representation of the reaction
  final String emoji;

  /// [title] Reaction title
  final String title;

  /// [isActive] True, if the reaction can be added to new messages and enabled
  /// in chats
  final bool isActive;

  /// [staticIcon] Static icon for the reaction
  final Sticker staticIcon;

  /// [appearAnimation] Appear animation for the reaction
  final Sticker appearAnimation;

  /// [selectAnimation] Select animation for the reaction
  final Sticker selectAnimation;

  /// [activateAnimation] Activate animation for the reaction
  final Sticker activateAnimation;

  /// [effectAnimation] Effect animation for the reaction
  final Sticker effectAnimation;

  /// [aroundAnimation] Around animation for the reaction; may be null
  final Sticker? aroundAnimation;

  /// [centerAnimation] Center animation for the reaction; may be null
  final Sticker? centerAnimation;

  static const String constructor = 'emojiReaction';

  static EmojiReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EmojiReaction(
      emoji: json['emoji'],
      title: json['title'],
      isActive: json['is_active'],
      staticIcon: Sticker.fromJson(json['static_icon'])!,
      appearAnimation: Sticker.fromJson(json['appear_animation'])!,
      selectAnimation: Sticker.fromJson(json['select_animation'])!,
      activateAnimation: Sticker.fromJson(json['activate_animation'])!,
      effectAnimation: Sticker.fromJson(json['effect_animation'])!,
      aroundAnimation: Sticker.fromJson(json['around_animation']),
      centerAnimation: Sticker.fromJson(json['center_animation']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        'title': title,
        'is_active': isActive,
        'static_icon': staticIcon.toJson(),
        'appear_animation': appearAnimation.toJson(),
        'select_animation': selectAnimation.toJson(),
        'activate_animation': activateAnimation.toJson(),
        'effect_animation': effectAnimation.toJson(),
        'around_animation': aroundAnimation?.toJson(),
        'center_animation': centerAnimation?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
