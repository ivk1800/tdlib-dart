import '../tdapi.dart';

/// Represents a date according to the Gregorian calendar
class Date extends TdObject {
  Date({required this.day, required this.month, required this.year});

  /// [day] Day of the month; 1-31
  final int day;

  /// [month] Month; 1-12
  final int month;

  /// [year] Year; 1-9999
  final int year;

  static const String CONSTRUCTOR = 'date';

  static Date? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Date(day: json['day'], month: json['month'], year: json['year']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'day': this.day,
        'month': this.month,
        'year': this.year,
        '@type': CONSTRUCTOR
      };
}
