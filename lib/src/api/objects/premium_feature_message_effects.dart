import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to use all available message effects
@immutable
class PremiumFeatureMessageEffects extends PremiumFeature {
  const PremiumFeatureMessageEffects();

  static const String constructor = 'premiumFeatureMessageEffects';

  static PremiumFeatureMessageEffects? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureMessageEffects();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
