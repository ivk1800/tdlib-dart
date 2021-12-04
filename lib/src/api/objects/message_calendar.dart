import '../tdapi.dart';

/// Contains information about found messages, splitted by days according to
/// the option "utc_time_offset"
class MessageCalendar extends TdObject {
  MessageCalendar({required this.totalCount, required this.days});

  /// [totalCount] Total number of found messages
  final int totalCount;

  /// [days] Information about messages sent
  final List<MessageCalendarDay> days;

  static const String CONSTRUCTOR = 'messageCalendar';

  static MessageCalendar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCalendar(
        totalCount: json['total_count'],
        days: List<MessageCalendarDay>.from((json['days'] ?? [])
            .map((item) => MessageCalendarDay.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'days': days.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
