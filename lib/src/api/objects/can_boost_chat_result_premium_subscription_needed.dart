import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user must have Telegram Premium subscription instead of a gifted
/// Telegram Premium
@immutable
class CanBoostChatResultPremiumSubscriptionNeeded extends CanBoostChatResult {
  const CanBoostChatResultPremiumSubscriptionNeeded();

  static const String constructor =
      'canBoostChatResultPremiumSubscriptionNeeded';

  static CanBoostChatResultPremiumSubscriptionNeeded? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanBoostChatResultPremiumSubscriptionNeeded();
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
