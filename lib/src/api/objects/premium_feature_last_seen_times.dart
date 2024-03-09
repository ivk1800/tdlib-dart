import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to view last seen and read times of other users even they
/// can't view last seen or read time for the current user
@immutable
class PremiumFeatureLastSeenTimes extends PremiumFeature {
  const PremiumFeatureLastSeenTimes();

  static const String constructor = 'premiumFeatureLastSeenTimes';

  static PremiumFeatureLastSeenTimes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureLastSeenTimes();
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
