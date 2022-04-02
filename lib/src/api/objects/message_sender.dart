import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about the sender of a message
abstract class MessageSender extends TdObject {
  const MessageSender();

  static const String CONSTRUCTOR = 'messageSender';

  /// Inherited by:
  /// [MessageSenderUser]
  /// [MessageSenderChat]
  static MessageSender? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case MessageSenderUser.CONSTRUCTOR:
        return MessageSenderUser.fromJson(json);
      case MessageSenderChat.CONSTRUCTOR:
        return MessageSenderChat.fromJson(json);
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
