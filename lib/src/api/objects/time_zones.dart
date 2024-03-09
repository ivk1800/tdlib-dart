import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of time zones
@immutable
class TimeZones extends TdObject {
  const TimeZones({
    required this.timeZones,
  });

  /// [timeZones] A list of time zones
  final List<TimeZone> timeZones;

  static const String constructor = 'timeZones';

  static TimeZones? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TimeZones(
      timeZones: List<TimeZone>.from(
          ((json['time_zones'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => TimeZone.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'time_zones': timeZones.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
