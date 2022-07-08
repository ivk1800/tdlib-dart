import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Increased limits
@immutable
class PremiumFeatureIncreasedLimits extends PremiumFeature {
  const PremiumFeatureIncreasedLimits();

  static const String constructor = 'premiumFeatureIncreasedLimits';

  static PremiumFeatureIncreasedLimits? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureIncreasedLimits();
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
