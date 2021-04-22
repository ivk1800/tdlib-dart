import '../tdapi.dart';

/// The TTL (Time To Live) setting for messages in the chat has been changed
class MessageChatSetTtl extends MessageContent {
  MessageChatSetTtl({required this.ttl});

  /// [ttl] New message TTL setting
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
}
