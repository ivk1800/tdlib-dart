import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to choose better quality for viewed stories
@immutable
class PremiumStoryFeatureVideoQuality extends PremiumStoryFeature {
  const PremiumStoryFeatureVideoQuality();

  static const String constructor = 'premiumStoryFeatureVideoQuality';

  static PremiumStoryFeatureVideoQuality? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureVideoQuality();
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
