import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to show an emoji status along with the user's name
@immutable
class PremiumFeatureEmojiStatus extends PremiumFeature {
  const PremiumFeatureEmojiStatus();

  static const String constructor = 'premiumFeatureEmojiStatus';

  static PremiumFeatureEmojiStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureEmojiStatus();
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
