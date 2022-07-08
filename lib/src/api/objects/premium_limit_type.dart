import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of a limit, increased for Premium users
@immutable
abstract class PremiumLimitType extends TdObject {
  const PremiumLimitType();

  static const String constructor = 'premiumLimitType';

  /// Inherited by:
  /// [PremiumLimitTypeBioLength]
  /// [PremiumLimitTypeCaptionLength]
  /// [PremiumLimitTypeChatFilterChosenChatCount]
  /// [PremiumLimitTypeChatFilterCount]
  /// [PremiumLimitTypeCreatedPublicChatCount]
  /// [PremiumLimitTypeFavoriteStickerCount]
  /// [PremiumLimitTypePinnedArchivedChatCount]
  /// [PremiumLimitTypePinnedChatCount]
  /// [PremiumLimitTypeSavedAnimationCount]
  /// [PremiumLimitTypeSupergroupCount]
  static PremiumLimitType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PremiumLimitTypeBioLength.constructor:
        return PremiumLimitTypeBioLength.fromJson(json);
      case PremiumLimitTypeCaptionLength.constructor:
        return PremiumLimitTypeCaptionLength.fromJson(json);
      case PremiumLimitTypeChatFilterChosenChatCount.constructor:
        return PremiumLimitTypeChatFilterChosenChatCount.fromJson(json);
      case PremiumLimitTypeChatFilterCount.constructor:
        return PremiumLimitTypeChatFilterCount.fromJson(json);
      case PremiumLimitTypeCreatedPublicChatCount.constructor:
        return PremiumLimitTypeCreatedPublicChatCount.fromJson(json);
      case PremiumLimitTypeFavoriteStickerCount.constructor:
        return PremiumLimitTypeFavoriteStickerCount.fromJson(json);
      case PremiumLimitTypePinnedArchivedChatCount.constructor:
        return PremiumLimitTypePinnedArchivedChatCount.fromJson(json);
      case PremiumLimitTypePinnedChatCount.constructor:
        return PremiumLimitTypePinnedChatCount.fromJson(json);
      case PremiumLimitTypeSavedAnimationCount.constructor:
        return PremiumLimitTypeSavedAnimationCount.fromJson(json);
      case PremiumLimitTypeSupergroupCount.constructor:
        return PremiumLimitTypeSupergroupCount.fromJson(json);
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
