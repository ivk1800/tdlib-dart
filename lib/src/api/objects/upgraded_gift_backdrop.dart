import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a backdrop of an upgraded gift
@immutable
class UpgradedGiftBackdrop extends TdObject {
  const UpgradedGiftBackdrop({
    required this.id,
    required this.name,
    required this.colors,
    required this.rarityPerMille,
  });

  /// [id] Unique identifier of the backdrop
  final int id;

  /// [name] Name of the backdrop
  final String name;

  /// [colors] Colors of the backdrop
  final UpgradedGiftBackdropColors colors;

  /// [rarityPerMille] The number of upgraded gifts that receive this backdrop
  /// for each 1000 gifts upgraded
  final int rarityPerMille;

  static const String constructor = 'upgradedGiftBackdrop';

  static UpgradedGiftBackdrop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftBackdrop(
      id: json['id'] as int,
      name: json['name'] as String,
      colors: UpgradedGiftBackdropColors.fromJson(
        json['colors'] as Map<String, dynamic>?,
      )!,
      rarityPerMille: json['rarity_per_mille'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'name': name,
    'colors': colors.toJson(),
    'rarity_per_mille': rarityPerMille,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
