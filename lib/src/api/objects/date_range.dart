import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a date range
class DateRange extends TdObject {
  DateRange({required this.startDate, required this.endDate});

  /// [startDate] Point in time (Unix timestamp) at which the date range begins
  final int startDate;

  /// [endDate] Point in time (Unix timestamp) at which the date range ends
  final int endDate;

  static const String CONSTRUCTOR = 'dateRange';

  static DateRange? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DateRange(startDate: json['start_date'], endDate: json['end_date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'start_date': this.startDate,
        'end_date': this.endDate,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
