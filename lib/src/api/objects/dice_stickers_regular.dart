import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A regular animated sticker
class DiceStickersRegular extends DiceStickers {
  DiceStickersRegular({required this.sticker});

  /// [sticker] The animated sticker with the dice animation
  final Sticker sticker;

  static const String CONSTRUCTOR = 'diceStickersRegular';

  static DiceStickersRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DiceStickersRegular(sticker: Sticker.fromJson(json['sticker'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sticker': this.sticker.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
