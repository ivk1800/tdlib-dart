import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Allowed to set a premium appllication icons
@immutable
class PremiumFeatureAppIcons extends PremiumFeature {
  const PremiumFeatureAppIcons();

  static const String constructor = 'premiumFeatureAppIcons';

  static PremiumFeatureAppIcons? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAppIcons();
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
