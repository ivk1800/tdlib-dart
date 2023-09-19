import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Allowed to use many additional features for stories
@immutable
class PremiumFeatureUpgradedStories extends PremiumFeature {
  const PremiumFeatureUpgradedStories();

  static const String constructor = 'premiumFeatureUpgradedStories';

  static PremiumFeatureUpgradedStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureUpgradedStories();
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
