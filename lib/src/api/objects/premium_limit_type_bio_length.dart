import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum length of the user's bio
@immutable
class PremiumLimitTypeBioLength extends PremiumLimitType {
  const PremiumLimitTypeBioLength();

  static const String constructor = 'premiumLimitTypeBioLength';

  static PremiumLimitTypeBioLength? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeBioLength();
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
