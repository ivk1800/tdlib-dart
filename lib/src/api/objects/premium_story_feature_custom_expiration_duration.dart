import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to set custom expiration duration for stories
@immutable
class PremiumStoryFeatureCustomExpirationDuration extends PremiumStoryFeature {
  const PremiumStoryFeatureCustomExpirationDuration();

  static const String constructor =
      'premiumStoryFeatureCustomExpirationDuration';

  static PremiumStoryFeatureCustomExpirationDuration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureCustomExpirationDuration();
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
