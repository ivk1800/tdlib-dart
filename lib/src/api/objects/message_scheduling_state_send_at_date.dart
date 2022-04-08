import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message will be sent at the specified date
@immutable
class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  const MessageSchedulingStateSendAtDate({
    required this.sendDate,
  });

  /// [sendDate] Date the message will be sent. The date must be within 367 days
  /// in the future
  final int sendDate;

  static const String constructor = 'messageSchedulingStateSendAtDate';

  static MessageSchedulingStateSendAtDate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSchedulingStateSendAtDate(
      sendDate: json['send_date'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'send_date': sendDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
