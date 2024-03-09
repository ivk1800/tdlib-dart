import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an interval of time when the business is open
@immutable
class BusinessOpeningHoursInterval extends TdObject {
  const BusinessOpeningHoursInterval({
    required this.startMinute,
    required this.endMinute,
  });

  /// [startMinute] The first minute of the interval since start of the week;
  /// 0-7*24*60
  final int startMinute;

  /// [endMinute] The first minute after the end of the interval since start of
  /// the week; 1-8*24*60
  final int endMinute;

  static const String constructor = 'businessOpeningHoursInterval';

  static BusinessOpeningHoursInterval? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessOpeningHoursInterval(
      startMinute: json['start_minute'] as int,
      endMinute: json['end_minute'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'start_minute': startMinute,
        'end_minute': endMinute,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
