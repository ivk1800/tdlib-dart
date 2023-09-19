import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to check who opened the current user's stories after they
/// expire
@immutable
class PremiumStoryFeaturePermanentViewsHistory extends PremiumStoryFeature {
  const PremiumStoryFeaturePermanentViewsHistory();

  static const String constructor = 'premiumStoryFeaturePermanentViewsHistory';

  static PremiumStoryFeaturePermanentViewsHistory? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumStoryFeaturePermanentViewsHistory();
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
