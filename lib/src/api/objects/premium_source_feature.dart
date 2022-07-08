import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A user tried to use a Premium feature
@immutable
class PremiumSourceFeature extends PremiumSource {
  const PremiumSourceFeature({
    required this.feature,
  });

  /// [feature] The used feature
  final PremiumFeature feature;

  static const String constructor = 'premiumSourceFeature';

  static PremiumSourceFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceFeature(
      feature: PremiumFeature.fromJson(json['feature'])!,
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
