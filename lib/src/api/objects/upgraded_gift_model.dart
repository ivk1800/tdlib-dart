import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a model of an upgraded gift
@immutable
class UpgradedGiftModel extends TdObject {
  const UpgradedGiftModel({
    required this.name,
    required this.sticker,
    required this.rarityPerMille,
  });

  /// [name] Name of the model
  final String name;

  /// [sticker] The sticker representing the upgraded gift
  final Sticker sticker;

  /// [rarityPerMille] The number of upgraded gifts that receive this model for
  /// each 1000 gifts upgraded
  final int rarityPerMille;

  static const String constructor = 'upgradedGiftModel';

  static UpgradedGiftModel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftModel(
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
