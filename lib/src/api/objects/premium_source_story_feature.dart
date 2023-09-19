import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A user tried to use a Premium story feature
@immutable
class PremiumSourceStoryFeature extends PremiumSource {
  const PremiumSourceStoryFeature({
    required this.feature,
  });

  /// [feature] The used feature
  final PremiumStoryFeature feature;

  static const String constructor = 'premiumSourceStoryFeature';

  static PremiumSourceStoryFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceStoryFeature(
      feature: PremiumStoryFeature.fromJson(
          json['feature'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'feature': feature.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
