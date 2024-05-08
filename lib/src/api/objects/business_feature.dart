import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a feature available to Business user accounts
@immutable
abstract class BusinessFeature extends TdObject {
  const BusinessFeature();

  static const String constructor = 'businessFeature';

  /// Inherited by:
  /// [BusinessFeatureAccountLinks]
  /// [BusinessFeatureAwayMessage]
  /// [BusinessFeatureBots]
  /// [BusinessFeatureChatFolderTags]
  /// [BusinessFeatureEmojiStatus]
  /// [BusinessFeatureGreetingMessage]
  /// [BusinessFeatureLocation]
  /// [BusinessFeatureOpeningHours]
  /// [BusinessFeatureQuickReplies]
  /// [BusinessFeatureStartPage]
  /// [BusinessFeatureUpgradedStories]
  static BusinessFeature? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BusinessFeatureAccountLinks.constructor:
        return BusinessFeatureAccountLinks.fromJson(json);
      case BusinessFeatureAwayMessage.constructor:
        return BusinessFeatureAwayMessage.fromJson(json);
      case BusinessFeatureBots.constructor:
        return BusinessFeatureBots.fromJson(json);
      case BusinessFeatureChatFolderTags.constructor:
        return BusinessFeatureChatFolderTags.fromJson(json);
      case BusinessFeatureEmojiStatus.constructor:
        return BusinessFeatureEmojiStatus.fromJson(json);
      case BusinessFeatureGreetingMessage.constructor:
        return BusinessFeatureGreetingMessage.fromJson(json);
      case BusinessFeatureLocation.constructor:
        return BusinessFeatureLocation.fromJson(json);
      case BusinessFeatureOpeningHours.constructor:
        return BusinessFeatureOpeningHours.fromJson(json);
      case BusinessFeatureQuickReplies.constructor:
        return BusinessFeatureQuickReplies.fromJson(json);
      case BusinessFeatureStartPage.constructor:
        return BusinessFeatureStartPage.fromJson(json);
      case BusinessFeatureUpgradedStories.constructor:
        return BusinessFeatureUpgradedStories.fromJson(json);
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
