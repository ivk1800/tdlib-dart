import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Stories of the current user are displayed before stories of non-Premium
/// contacts, supergroups, and channels
@immutable
class PremiumStoryFeaturePriorityOrder extends PremiumStoryFeature {
  const PremiumStoryFeaturePriorityOrder();

  static const String constructor = 'premiumStoryFeaturePriorityOrder';

  static PremiumStoryFeaturePriorityOrder? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeaturePriorityOrder();
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
