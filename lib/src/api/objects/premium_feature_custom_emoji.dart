import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Allowed to use custom emoji stickers in message texts and captions
@immutable
class PremiumFeatureCustomEmoji extends PremiumFeature {
  const PremiumFeatureCustomEmoji();

  static const String constructor = 'premiumFeatureCustomEmoji';

  static PremiumFeatureCustomEmoji? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureCustomEmoji();
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
