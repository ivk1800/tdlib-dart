import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains animated stickers which must be used for dice animation rendering
@immutable
abstract class DiceStickers extends TdObject {
  const DiceStickers();

  static const String constructor = 'diceStickers';

  /// Inherited by:
  /// [DiceStickersRegular]
  /// [DiceStickersSlotMachine]
  static DiceStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case DiceStickersRegular.constructor:
        return DiceStickersRegular.fromJson(json);
      case DiceStickersSlotMachine.constructor:
        return DiceStickersSlotMachine.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
