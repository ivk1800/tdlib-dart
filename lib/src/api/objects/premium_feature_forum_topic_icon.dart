import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to set a custom emoji as a forum topic icon
@immutable
class PremiumFeatureForumTopicIcon extends PremiumFeature {
  const PremiumFeatureForumTopicIcon();

  static const String constructor = 'premiumFeatureForumTopicIcon';

  static PremiumFeatureForumTopicIcon? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureForumTopicIcon();
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
