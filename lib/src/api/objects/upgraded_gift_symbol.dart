import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a symbol shown on the pattern of an upgraded gift
@immutable
class UpgradedGiftSymbol extends TdObject {
  const UpgradedGiftSymbol({
    required this.name,
    required this.sticker,
    required this.rarityPerMille,
  });

  /// [name] Name of the symbol
  final String name;

  /// [sticker] The sticker representing the symbol
  final Sticker sticker;

  /// [rarityPerMille] The number of upgraded gifts that receive this symbol for
  /// each 1000 gifts upgraded
  final int rarityPerMille;

  static const String constructor = 'upgradedGiftSymbol';

  static UpgradedGiftSymbol? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftSymbol(
      name: json['name'] as String,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
      rarityPerMille: json['rarity_per_mille'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'sticker': sticker.toJson(),
    'rarity_per_mille': rarityPerMille,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
