import '../tdapi.dart';

/// Contains information about found messages sent on a specific day
class MessageCalendarDay extends TdObject {
  MessageCalendarDay({required this.totalCount, required this.message});

  /// [totalCount] Total number of found messages sent on the day
  final int totalCount;

  /// [message] First message sent on the day
  final Message message;

  static const String CONSTRUCTOR = 'messageCalendarDay';

  static MessageCalendarDay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageCalendarDay(
        totalCount: json['total_count'],
        message: Message.fromJson(json['message'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'message': this.message.toJson(),
        '@type': CONSTRUCTOR
      };
}
