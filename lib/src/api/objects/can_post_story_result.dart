import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of checking whether the current user can post a story on
/// behalf of the specific chat
@immutable
abstract class CanPostStoryResult extends TdObject {
  const CanPostStoryResult();

  static const String constructor = 'canPostStoryResult';

  /// Inherited by:
  /// [CanPostStoryResultActiveStoryLimitExceeded]
  /// [CanPostStoryResultBoostNeeded]
  /// [CanPostStoryResultMonthlyLimitExceeded]
  /// [CanPostStoryResultOk]
  /// [CanPostStoryResultPremiumNeeded]
  /// [CanPostStoryResultWeeklyLimitExceeded]
  static CanPostStoryResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CanPostStoryResultActiveStoryLimitExceeded.constructor:
        return CanPostStoryResultActiveStoryLimitExceeded.fromJson(json);
      case CanPostStoryResultBoostNeeded.constructor:
        return CanPostStoryResultBoostNeeded.fromJson(json);
      case CanPostStoryResultMonthlyLimitExceeded.constructor:
        return CanPostStoryResultMonthlyLimitExceeded.fromJson(json);
      case CanPostStoryResultOk.constructor:
        return CanPostStoryResultOk.fromJson(json);
      case CanPostStoryResultPremiumNeeded.constructor:
        return CanPostStoryResultPremiumNeeded.fromJson(json);
      case CanPostStoryResultWeeklyLimitExceeded.constructor:
        return CanPostStoryResultWeeklyLimitExceeded.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
