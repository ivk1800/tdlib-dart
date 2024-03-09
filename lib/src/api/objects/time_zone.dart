import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a time zone
@immutable
class TimeZone extends TdObject {
  const TimeZone({
    required this.id,
    required this.name,
    required this.utcTimeOffset,
  });

  /// [id] Unique time zone identifier
  final String id;

  /// [name] Time zone name
  final String name;

  /// [utcTimeOffset] Current UTC time offset for the time zone
  final int utcTimeOffset;

  static const String constructor = 'timeZone';

  static TimeZone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TimeZone(
      id: json['id'] as String,
      name: json['name'] as String,
      utcTimeOffset: json['utc_time_offset'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'utc_time_offset': utcTimeOffset,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
