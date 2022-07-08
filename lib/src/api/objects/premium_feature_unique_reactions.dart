import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Allowed to use more reactions
@immutable
class PremiumFeatureUniqueReactions extends PremiumFeature {
  const PremiumFeatureUniqueReactions();

  static const String constructor = 'premiumFeatureUniqueReactions';

  static PremiumFeatureUniqueReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureUniqueReactions();
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
