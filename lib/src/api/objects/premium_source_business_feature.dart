import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A user tried to use a Business feature
@immutable
class PremiumSourceBusinessFeature extends PremiumSource {
  const PremiumSourceBusinessFeature({
    this.feature,
  });

  /// [feature] The used feature; pass null if none specific feature was used
  final BusinessFeature? feature;

  static const String constructor = 'premiumSourceBusinessFeature';

  static PremiumSourceBusinessFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceBusinessFeature(
      feature:
          BusinessFeature.fromJson(json['feature'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'feature': feature?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
