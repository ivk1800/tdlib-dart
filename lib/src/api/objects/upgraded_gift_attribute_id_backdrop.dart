import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Identifier of a gift backdrop
@immutable
class UpgradedGiftAttributeIdBackdrop extends UpgradedGiftAttributeId {
  const UpgradedGiftAttributeIdBackdrop({required this.backdropId});

  /// [backdropId] Identifier of the backdrop
  final int backdropId;

  static const String constructor = 'upgradedGiftAttributeIdBackdrop';

  static UpgradedGiftAttributeIdBackdrop? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftAttributeIdBackdrop(
      backdropId: json['backdrop_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'backdrop_id': backdropId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
