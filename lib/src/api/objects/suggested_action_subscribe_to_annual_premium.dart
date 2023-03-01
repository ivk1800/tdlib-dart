import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to subscribe to the Premium subscription with annual
/// payments
@immutable
class SuggestedActionSubscribeToAnnualPremium extends SuggestedAction {
  const SuggestedActionSubscribeToAnnualPremium();

  static const String constructor = 'suggestedActionSubscribeToAnnualPremium';

  static SuggestedActionSubscribeToAnnualPremium? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionSubscribeToAnnualPremium();
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
