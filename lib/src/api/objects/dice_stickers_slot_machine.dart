import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Animated stickers to be combined into a slot machine
@immutable
class DiceStickersSlotMachine extends DiceStickers {
  const DiceStickersSlotMachine({
    required this.background,
    required this.lever,
    required this.leftReel,
    required this.centerReel,
    required this.rightReel,
  });

  /// [background] The animated sticker with the slot machine background. The
  /// background animation must start playing after all reel animations finish
  final Sticker background;

  /// [lever] The animated sticker with the lever animation. The lever animation
  /// must play once in the initial dice state
  final Sticker lever;

  /// [leftReel] The animated sticker with the left reel
  final Sticker leftReel;

  /// [centerReel] The animated sticker with the center reel
  final Sticker centerReel;

  /// [rightReel] The animated sticker with the right reel
  final Sticker rightReel;

  static const String constructor = 'diceStickersSlotMachine';

  static DiceStickersSlotMachine? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DiceStickersSlotMachine(
      background:
          Sticker.fromJson(json['background'] as Map<String, dynamic>?)!,
      lever: Sticker.fromJson(json['lever'] as Map<String, dynamic>?)!,
      leftReel: Sticker.fromJson(json['left_reel'] as Map<String, dynamic>?)!,
      centerReel:
          Sticker.fromJson(json['center_reel'] as Map<String, dynamic>?)!,
      rightReel: Sticker.fromJson(json['right_reel'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'background': background.toJson(),
        'lever': lever.toJson(),
        'left_reel': leftReel.toJson(),
        'center_reel': centerReel.toJson(),
        'right_reel': rightReel.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
