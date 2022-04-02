import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The TTL (Time To Live) setting for messages in the chat has been changed
class MessageChatSetTtl extends MessageContent {
  MessageChatSetTtl({required this.ttl});

  /// [ttl] New message TTL
  final int ttl;

  static const String CONSTRUCTOR = 'messageChatSetTtl';

  static MessageChatSetTtl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatSetTtl(ttl: json['ttl']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'ttl': this.ttl, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
