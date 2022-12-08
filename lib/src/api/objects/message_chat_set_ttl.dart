import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The TTL (Time To Live) setting for messages in the chat has been changed
@immutable
class MessageChatSetTtl extends MessageContent {
  const MessageChatSetTtl({
    required this.ttl,
    required this.fromUserId,
  });

  /// [ttl] New message TTL
  final int ttl;

  /// [fromUserId] If not 0, a user identifier, which default setting was
  /// automatically applied
  final int fromUserId;

  static const String constructor = 'messageChatSetTtl';

  static MessageChatSetTtl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatSetTtl(
      ttl: json['ttl'],
      fromUserId: json['from_user_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'ttl': ttl,
        'from_user_id': fromUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
