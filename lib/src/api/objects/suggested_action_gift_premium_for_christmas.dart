import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to gift Telegram Premium to friends for Christmas
@immutable
class SuggestedActionGiftPremiumForChristmas extends SuggestedAction {
  const SuggestedActionGiftPremiumForChristmas();

  static const String constructor = 'suggestedActionGiftPremiumForChristmas';

  static SuggestedActionGiftPremiumForChristmas? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionGiftPremiumForChristmas();
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
