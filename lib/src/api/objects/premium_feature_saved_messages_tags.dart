import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to use tags in Saved Messages
@immutable
class PremiumFeatureSavedMessagesTags extends PremiumFeature {
  const PremiumFeatureSavedMessagesTags();

  static const String constructor = 'premiumFeatureSavedMessagesTags';

  static PremiumFeatureSavedMessagesTags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureSavedMessagesTags();
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
