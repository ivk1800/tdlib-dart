import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of checking whether the current user can send a story in
/// the specific chat
@immutable
abstract class CanSendStoryResult extends TdObject {
  const CanSendStoryResult();

  static const String constructor = 'canSendStoryResult';

  /// Inherited by:
  /// [CanSendStoryResultActiveStoryLimitExceeded]
  /// [CanSendStoryResultBoostNeeded]
  /// [CanSendStoryResultMonthlyLimitExceeded]
  /// [CanSendStoryResultOk]
  /// [CanSendStoryResultPremiumNeeded]
  /// [CanSendStoryResultWeeklyLimitExceeded]
  static CanSendStoryResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CanSendStoryResultActiveStoryLimitExceeded.constructor:
        return CanSendStoryResultActiveStoryLimitExceeded.fromJson(json);
      case CanSendStoryResultBoostNeeded.constructor:
        return CanSendStoryResultBoostNeeded.fromJson(json);
      case CanSendStoryResultMonthlyLimitExceeded.constructor:
        return CanSendStoryResultMonthlyLimitExceeded.fromJson(json);
      case CanSendStoryResultOk.constructor:
        return CanSendStoryResultOk.fromJson(json);
      case CanSendStoryResultPremiumNeeded.constructor:
        return CanSendStoryResultPremiumNeeded.fromJson(json);
      case CanSendStoryResultWeeklyLimitExceeded.constructor:
        return CanSendStoryResultWeeklyLimitExceeded.fromJson(json);
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
