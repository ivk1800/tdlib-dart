import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Identifier of a gift model
@immutable
class UpgradedGiftAttributeIdModel extends UpgradedGiftAttributeId {
  const UpgradedGiftAttributeIdModel({required this.stickerId});

  /// [stickerId] Identifier of the sticker representing the model
  final int stickerId;

  static const String constructor = 'upgradedGiftAttributeIdModel';

  static UpgradedGiftAttributeIdModel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftAttributeIdModel(
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
