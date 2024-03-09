import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a story feature available to Premium users
@immutable
abstract class PremiumStoryFeature extends TdObject {
  const PremiumStoryFeature();

  static const String constructor = 'premiumStoryFeature';

  /// Inherited by:
  /// [PremiumStoryFeatureCustomExpirationDuration]
  /// [PremiumStoryFeatureLinksAndFormatting]
  /// [PremiumStoryFeaturePermanentViewsHistory]
  /// [PremiumStoryFeaturePriorityOrder]
  /// [PremiumStoryFeatureSaveStories]
  /// [PremiumStoryFeatureStealthMode]
  /// [PremiumStoryFeatureVideoQuality]
  static PremiumStoryFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PremiumStoryFeatureCustomExpirationDuration.constructor:
        return PremiumStoryFeatureCustomExpirationDuration.fromJson(json);
      case PremiumStoryFeatureLinksAndFormatting.constructor:
        return PremiumStoryFeatureLinksAndFormatting.fromJson(json);
      case PremiumStoryFeaturePermanentViewsHistory.constructor:
        return PremiumStoryFeaturePermanentViewsHistory.fromJson(json);
      case PremiumStoryFeaturePriorityOrder.constructor:
        return PremiumStoryFeaturePriorityOrder.fromJson(json);
      case PremiumStoryFeatureSaveStories.constructor:
        return PremiumStoryFeatureSaveStories.fromJson(json);
      case PremiumStoryFeatureStealthMode.constructor:
        return PremiumStoryFeatureStealthMode.fromJson(json);
      case PremiumStoryFeatureVideoQuality.constructor:
        return PremiumStoryFeatureVideoQuality.fromJson(json);
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
