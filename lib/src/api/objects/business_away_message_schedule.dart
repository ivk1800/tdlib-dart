import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes conditions for sending of away messages by a Telegram Business
/// account
@immutable
abstract class BusinessAwayMessageSchedule extends TdObject {
  const BusinessAwayMessageSchedule();

  static const String constructor = 'businessAwayMessageSchedule';

  /// Inherited by:
  /// [BusinessAwayMessageScheduleAlways]
  /// [BusinessAwayMessageScheduleCustom]
  /// [BusinessAwayMessageScheduleOutsideOfOpeningHours]
  static BusinessAwayMessageSchedule? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case BusinessAwayMessageScheduleAlways.constructor:
        return BusinessAwayMessageScheduleAlways.fromJson(json);
      case BusinessAwayMessageScheduleCustom.constructor:
        return BusinessAwayMessageScheduleCustom.fromJson(json);
      case BusinessAwayMessageScheduleOutsideOfOpeningHours.constructor:
        return BusinessAwayMessageScheduleOutsideOfOpeningHours.fromJson(json);
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
