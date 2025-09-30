import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of stories posted per month
@immutable
class PremiumLimitTypeMonthlyPostedStoryCount extends PremiumLimitType {
  const PremiumLimitTypeMonthlyPostedStoryCount();

  static const String constructor = 'premiumLimitTypeMonthlyPostedStoryCount';

  static PremiumLimitTypeMonthlyPostedStoryCount? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeMonthlyPostedStoryCount();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
