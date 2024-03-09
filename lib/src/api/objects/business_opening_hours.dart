import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes opening hours of a business
@immutable
class BusinessOpeningHours extends TdObject {
  const BusinessOpeningHours({
    required this.timeZoneId,
    required this.openingHours,
  });

  /// [timeZoneId] Unique time zone identifier
  final String timeZoneId;

  /// [openingHours] Intervals of the time when the business is open
  final List<BusinessOpeningHoursInterval> openingHours;

  static const String constructor = 'businessOpeningHours';

  static BusinessOpeningHours? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessOpeningHours(
      timeZoneId: json['time_zone_id'] as String,
      openingHours: List<BusinessOpeningHoursInterval>.from(
          ((json['opening_hours'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => BusinessOpeningHoursInterval.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'time_zone_id': timeZoneId,
        'opening_hours': openingHours.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
