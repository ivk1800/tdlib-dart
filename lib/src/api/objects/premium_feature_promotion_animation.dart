import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a promotion animation for a Premium feature
@immutable
class PremiumFeaturePromotionAnimation extends TdObject {
  const PremiumFeaturePromotionAnimation({
    required this.feature,
    required this.animation,
  });

  /// [feature] Premium feature
  final PremiumFeature feature;

  /// [animation] Promotion animation for the feature
  final Animation animation;

  static const String constructor = 'premiumFeaturePromotionAnimation';

  static PremiumFeaturePromotionAnimation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumFeaturePromotionAnimation(
      feature:
          PremiumFeature.fromJson(json['feature'] as Map<String, dynamic>?)!,
      animation:
          Animation.fromJson(json['animation'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'feature': feature.toJson(),
        'animation': animation.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
