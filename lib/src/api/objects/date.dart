import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a date according to the Gregorian calendar
@immutable
class Date extends TdObject {
  const Date({
    required this.day,
    required this.month,
    required this.year,
  });

  /// [day] Day of the month; 1-31
  final int day;

  /// [month] Month; 1-12
  final int month;

  /// [year] Year; 1-9999
  final int year;

  static const String constructor = 'date';

  static Date? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Date(
      day: json['day'],
      month: json['month'],
      year: json['year'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'day': day,
        'month': month,
        'year': year,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
