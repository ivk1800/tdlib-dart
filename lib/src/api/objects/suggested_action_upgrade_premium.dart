import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to upgrade the Premium subscription from monthly
/// payments to annual payments
@immutable
class SuggestedActionUpgradePremium extends SuggestedAction {
  const SuggestedActionUpgradePremium();

  static const String constructor = 'suggestedActionUpgradePremium';

  static SuggestedActionUpgradePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionUpgradePremium();
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
