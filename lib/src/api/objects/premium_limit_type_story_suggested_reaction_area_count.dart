import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of suggested reaction areas on a story
@immutable
class PremiumLimitTypeStorySuggestedReactionAreaCount extends PremiumLimitType {
  const PremiumLimitTypeStorySuggestedReactionAreaCount();

  static const String constructor =
      'premiumLimitTypeStorySuggestedReactionAreaCount';

  static PremiumLimitTypeStorySuggestedReactionAreaCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeStorySuggestedReactionAreaCount();
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
