import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to save other's unprotected stories
@immutable
class PremiumStoryFeatureSaveStories extends PremiumStoryFeature {
  const PremiumStoryFeatureSaveStories();

  static const String constructor = 'premiumStoryFeatureSaveStories';

  static PremiumStoryFeatureSaveStories? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureSaveStories();
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
