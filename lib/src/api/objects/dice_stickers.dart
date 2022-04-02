import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains animated stickers which must be used for dice animation rendering
abstract class DiceStickers extends TdObject {
  const DiceStickers();

  static const String CONSTRUCTOR = 'diceStickers';

  /// Inherited by:
  /// [DiceStickersRegular]
  /// [DiceStickersSlotMachine]
  static DiceStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case DiceStickersRegular.CONSTRUCTOR:
        return DiceStickersRegular.fromJson(json);
      case DiceStickersSlotMachine.CONSTRUCTOR:
        return DiceStickersSlotMachine.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
