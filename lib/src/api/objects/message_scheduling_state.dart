import '../tdapi.dart';

/// Contains information about the time when a scheduled message will be sent
abstract class MessageSchedulingState extends TdObject {
  const MessageSchedulingState();

  static const String CONSTRUCTOR = 'messageSchedulingState';

  /// Inherited by:
  /// [MessageSchedulingStateSendAtDate]
  /// [MessageSchedulingStateSendWhenOnline]
  static MessageSchedulingState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case MessageSchedulingStateSendAtDate.CONSTRUCTOR:
        return MessageSchedulingStateSendAtDate.fromJson(json);
      case MessageSchedulingStateSendWhenOnline.CONSTRUCTOR:
        return MessageSchedulingStateSendWhenOnline.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
