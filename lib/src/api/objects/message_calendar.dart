import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about found messages, split by days according to the
/// option "utc_time_offset"
@immutable
class MessageCalendar extends TdObject {
  const MessageCalendar({
    required this.totalCount,
    required this.days,
  });

  /// [totalCount] Total number of found messages
  final int totalCount;

  /// [days] Information about messages sent
  final List<MessageCalendarDay> days;

  static const String constructor = 'messageCalendar';

  static MessageCalendar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCalendar(
      totalCount: json['total_count'],
      days: List<MessageCalendarDay>.from((json['days'] ?? [])
          .map((item) => MessageCalendarDay.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'days': days.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
