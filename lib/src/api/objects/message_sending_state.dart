import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about the sending state of the message
abstract class MessageSendingState extends TdObject {
  const MessageSendingState();

  static const String CONSTRUCTOR = 'messageSendingState';

  /// Inherited by:
  /// [MessageSendingStatePending]
  /// [MessageSendingStateFailed]
  static MessageSendingState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case MessageSendingStatePending.CONSTRUCTOR:
        return MessageSendingStatePending.fromJson(json);
      case MessageSendingStateFailed.CONSTRUCTOR:
        return MessageSendingStateFailed.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
