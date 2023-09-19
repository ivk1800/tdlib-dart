import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of stories sent per month
@immutable
class PremiumLimitTypeMonthlySentStoryCount extends PremiumLimitType {
  const PremiumLimitTypeMonthlySentStoryCount();

  static const String constructor = 'premiumLimitTypeMonthlySentStoryCount';

  static PremiumLimitTypeMonthlySentStoryCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeMonthlySentStoryCount();
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
