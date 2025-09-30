import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Identifier of a gift symbol
@immutable
class UpgradedGiftAttributeIdSymbol extends UpgradedGiftAttributeId {
  const UpgradedGiftAttributeIdSymbol({required this.stickerId});

  /// [stickerId] Identifier of the sticker representing the symbol
  final int stickerId;

  static const String constructor = 'upgradedGiftAttributeIdSymbol';

  static UpgradedGiftAttributeIdSymbol? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftAttributeIdSymbol(
      stickerId: int.tryParse(json['sticker_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'sticker_id': stickerId.toString(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
