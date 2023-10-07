import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a feature available to Premium users
@immutable
abstract class PremiumFeature extends TdObject {
  const PremiumFeature();

  static const String constructor = 'premiumFeature';

  /// Inherited by:
  /// [PremiumFeatureAdvancedChatManagement]
  /// [PremiumFeatureAnimatedProfilePhoto]
  /// [PremiumFeatureAppIcons]
  /// [PremiumFeatureChatBoost]
  /// [PremiumFeatureCustomEmoji]
  /// [PremiumFeatureDisabledAds]
  /// [PremiumFeatureEmojiStatus]
  /// [PremiumFeatureForumTopicIcon]
  /// [PremiumFeatureImprovedDownloadSpeed]
  /// [PremiumFeatureIncreasedLimits]
  /// [PremiumFeatureIncreasedUploadFileSize]
  /// [PremiumFeatureProfileBadge]
  /// [PremiumFeatureRealTimeChatTranslation]
  /// [PremiumFeatureUniqueReactions]
  /// [PremiumFeatureUniqueStickers]
  /// [PremiumFeatureUpgradedStories]
  /// [PremiumFeatureVoiceRecognition]
  static PremiumFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PremiumFeatureAdvancedChatManagement.constructor:
        return PremiumFeatureAdvancedChatManagement.fromJson(json);
      case PremiumFeatureAnimatedProfilePhoto.constructor:
        return PremiumFeatureAnimatedProfilePhoto.fromJson(json);
      case PremiumFeatureAppIcons.constructor:
        return PremiumFeatureAppIcons.fromJson(json);
      case PremiumFeatureChatBoost.constructor:
        return PremiumFeatureChatBoost.fromJson(json);
      case PremiumFeatureCustomEmoji.constructor:
        return PremiumFeatureCustomEmoji.fromJson(json);
      case PremiumFeatureDisabledAds.constructor:
        return PremiumFeatureDisabledAds.fromJson(json);
      case PremiumFeatureEmojiStatus.constructor:
        return PremiumFeatureEmojiStatus.fromJson(json);
      case PremiumFeatureForumTopicIcon.constructor:
        return PremiumFeatureForumTopicIcon.fromJson(json);
      case PremiumFeatureImprovedDownloadSpeed.constructor:
        return PremiumFeatureImprovedDownloadSpeed.fromJson(json);
      case PremiumFeatureIncreasedLimits.constructor:
        return PremiumFeatureIncreasedLimits.fromJson(json);
      case PremiumFeatureIncreasedUploadFileSize.constructor:
        return PremiumFeatureIncreasedUploadFileSize.fromJson(json);
      case PremiumFeatureProfileBadge.constructor:
        return PremiumFeatureProfileBadge.fromJson(json);
      case PremiumFeatureRealTimeChatTranslation.constructor:
        return PremiumFeatureRealTimeChatTranslation.fromJson(json);
      case PremiumFeatureUniqueReactions.constructor:
        return PremiumFeatureUniqueReactions.fromJson(json);
      case PremiumFeatureUniqueStickers.constructor:
        return PremiumFeatureUniqueStickers.fromJson(json);
      case PremiumFeatureUpgradedStories.constructor:
        return PremiumFeatureUpgradedStories.fromJson(json);
      case PremiumFeatureVoiceRecognition.constructor:
        return PremiumFeatureVoiceRecognition.fromJson(json);
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
