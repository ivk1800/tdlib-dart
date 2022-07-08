import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Profile photo animation on message and chat screens
@immutable
class PremiumFeatureAnimatedProfilePhoto extends PremiumFeature {
  const PremiumFeatureAnimatedProfilePhoto();

  static const String constructor = 'premiumFeatureAnimatedProfilePhoto';

  static PremiumFeatureAnimatedProfilePhoto? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAnimatedProfilePhoto();
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
