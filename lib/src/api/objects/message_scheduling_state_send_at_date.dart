import '../tdapi.dart';

/// The message will be sent at the specified date
class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  MessageSchedulingStateSendAtDate({required this.sendDate});

  /// [sendDate] Date the message will be sent. The date must be within 367 days
  /// in the future
  final int sendDate;

  static const String CONSTRUCTOR = 'messageSchedulingStateSendAtDate';

  static MessageSchedulingStateSendAtDate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSchedulingStateSendAtDate(sendDate: json['send_date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'send_date': this.sendDate, '@type': CONSTRUCTOR};
}
