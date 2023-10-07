import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of checking whether the current user can boost the
/// specific chat
@immutable
abstract class CanBoostChatResult extends TdObject {
  const CanBoostChatResult();

  static const String constructor = 'canBoostChatResult';

  /// Inherited by:
  /// [CanBoostChatResultAlreadyBoosted]
  /// [CanBoostChatResultInvalidChat]
  /// [CanBoostChatResultOk]
  /// [CanBoostChatResultPremiumNeeded]
  /// [CanBoostChatResultPremiumSubscriptionNeeded]
  /// [CanBoostChatResultWaitNeeded]
  static CanBoostChatResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CanBoostChatResultAlreadyBoosted.constructor:
        return CanBoostChatResultAlreadyBoosted.fromJson(json);
      case CanBoostChatResultInvalidChat.constructor:
        return CanBoostChatResultInvalidChat.fromJson(json);
      case CanBoostChatResultOk.constructor:
        return CanBoostChatResultOk.fromJson(json);
      case CanBoostChatResultPremiumNeeded.constructor:
        return CanBoostChatResultPremiumNeeded.fromJson(json);
      case CanBoostChatResultPremiumSubscriptionNeeded.constructor:
        return CanBoostChatResultPremiumSubscriptionNeeded.fromJson(json);
      case CanBoostChatResultWaitNeeded.constructor:
        return CanBoostChatResultWaitNeeded.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
