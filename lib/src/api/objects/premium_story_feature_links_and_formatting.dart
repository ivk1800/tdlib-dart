import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to use links and formatting in story caption
@immutable
class PremiumStoryFeatureLinksAndFormatting extends PremiumStoryFeature {
  const PremiumStoryFeatureLinksAndFormatting();

  static const String constructor = 'premiumStoryFeatureLinksAndFormatting';

  static PremiumStoryFeatureLinksAndFormatting? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeatureLinksAndFormatting();
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
