import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message will be sent when the video in the message is converted and
/// optimized; can be used only by the server
@immutable
class MessageSchedulingStateSendWhenVideoProcessed
    extends MessageSchedulingState {
  const MessageSchedulingStateSendWhenVideoProcessed({
    required this.sendDate,
  });

  /// [sendDate] Approximate point in time (Unix timestamp) when the message is
  /// expected to be sent
  final int sendDate;

  static const String constructor =
      'messageSchedulingStateSendWhenVideoProcessed';

  static MessageSchedulingStateSendWhenVideoProcessed? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSchedulingStateSendWhenVideoProcessed(
      sendDate: json['send_date'] as int,
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
