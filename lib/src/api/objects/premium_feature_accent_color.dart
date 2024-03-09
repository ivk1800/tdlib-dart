import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to choose accent color for replies and user profile
@immutable
class PremiumFeatureAccentColor extends PremiumFeature {
  const PremiumFeatureAccentColor();

  static const String constructor = 'premiumFeatureAccentColor';

  static PremiumFeatureAccentColor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAccentColor();
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
