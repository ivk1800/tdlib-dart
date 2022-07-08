import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains stickers which must be used for reaction animation rendering
@immutable
class Reaction extends TdObject {
  const Reaction({
    required this.reaction,
    required this.title,
    required this.isActive,
    required this.isPremium,
    required this.staticIcon,
    required this.appearAnimation,
    required this.selectAnimation,
    required this.activateAnimation,
    required this.effectAnimation,
    this.aroundAnimation,
    this.centerAnimation,
  });

  /// [reaction] Text representation of the reaction
  final String reaction;

  /// [title] Reaction title
  final String title;

  /// [isActive] True, if the reaction can be added to new messages and enabled
  /// in chats
  final bool isActive;

  /// [isPremium] True, if the reaction is available only for Premium users
  final bool isPremium;

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

  static const String constructor = 'reaction';

  static Reaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Reaction(
      reaction: json['reaction'],
      title: json['title'],
      isActive: json['is_active'],
      isPremium: json['is_premium'],
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
        'reaction': reaction,
        'title': title,
        'is_active': isActive,
        'is_premium': isPremium,
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
