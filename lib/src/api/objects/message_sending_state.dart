import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about the sending state of the message
@immutable
abstract class MessageSendingState extends TdObject {
  const MessageSendingState();

  static const String constructor = 'messageSendingState';

  /// Inherited by:
  /// [MessageSendingStatePending]
  /// [MessageSendingStateFailed]
  static MessageSendingState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case MessageSendingStatePending.constructor:
        return MessageSendingStatePending.fromJson(json);
      case MessageSendingStateFailed.constructor:
        return MessageSendingStateFailed.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
