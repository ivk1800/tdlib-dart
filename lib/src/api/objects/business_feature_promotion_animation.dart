import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a promotion animation for a Business feature
@immutable
class BusinessFeaturePromotionAnimation extends TdObject {
  const BusinessFeaturePromotionAnimation({
    required this.feature,
    required this.animation,
  });

  /// [feature] Business feature
  final BusinessFeature feature;

  /// [animation] Promotion animation for the feature
  final Animation animation;

  static const String constructor = 'businessFeaturePromotionAnimation';

  static BusinessFeaturePromotionAnimation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessFeaturePromotionAnimation(
      feature:
          BusinessFeature.fromJson(json['feature'] as Map<String, dynamic>?)!,
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
