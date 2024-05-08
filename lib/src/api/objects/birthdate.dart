import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a birthdate of a user
@immutable
class Birthdate extends TdObject {
  const Birthdate({
    required this.day,
    required this.month,
    required this.year,
  });

  /// [day] Day of the month; 1-31
  final int day;

  /// [month] Month of the year; 1-12
  final int month;

  /// [year] Birth year; 0 if unknown
  final int year;

  static const String constructor = 'birthdate';

  static Birthdate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Birthdate(
      day: json['day'] as int,
      month: json['month'] as int,
      year: json['year'] as int,
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
