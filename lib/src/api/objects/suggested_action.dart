import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an action suggested to the current user
@immutable
abstract class SuggestedAction extends TdObject {
  const SuggestedAction();

  static const String constructor = 'suggestedAction';

  /// Inherited by:
  /// [SuggestedActionCheckPassword]
  /// [SuggestedActionCheckPhoneNumber]
  /// [SuggestedActionConvertToBroadcastGroup]
  /// [SuggestedActionEnableArchiveAndMuteNewChats]
  /// [SuggestedActionSetPassword]
  /// [SuggestedActionSubscribeToAnnualPremium]
  /// [SuggestedActionUpgradePremium]
  /// [SuggestedActionViewChecksHint]
  static SuggestedAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SuggestedActionCheckPassword.constructor:
        return SuggestedActionCheckPassword.fromJson(json);
      case SuggestedActionCheckPhoneNumber.constructor:
        return SuggestedActionCheckPhoneNumber.fromJson(json);
      case SuggestedActionConvertToBroadcastGroup.constructor:
        return SuggestedActionConvertToBroadcastGroup.fromJson(json);
      case SuggestedActionEnableArchiveAndMuteNewChats.constructor:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);
      case SuggestedActionSetPassword.constructor:
        return SuggestedActionSetPassword.fromJson(json);
      case SuggestedActionSubscribeToAnnualPremium.constructor:
        return SuggestedActionSubscribeToAnnualPremium.fromJson(json);
      case SuggestedActionUpgradePremium.constructor:
        return SuggestedActionUpgradePremium.fromJson(json);
      case SuggestedActionViewChecksHint.constructor:
        return SuggestedActionViewChecksHint.fromJson(json);
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
