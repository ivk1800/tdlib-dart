import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to use Business features
@immutable
class PremiumFeatureBusiness extends PremiumFeature {
  const PremiumFeatureBusiness();

  static const String constructor = 'premiumFeatureBusiness';

  static PremiumFeatureBusiness? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureBusiness();
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
