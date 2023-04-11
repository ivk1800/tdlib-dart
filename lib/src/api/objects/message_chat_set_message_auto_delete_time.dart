import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The auto-delete or self-destruct timer for messages in the chat has been
/// changed
@immutable
class MessageChatSetMessageAutoDeleteTime extends MessageContent {
  const MessageChatSetMessageAutoDeleteTime({
    required this.messageAutoDeleteTime,
    required this.fromUserId,
  });

  /// [messageAutoDeleteTime] New value auto-delete or self-destruct time, in
  /// seconds; 0 if disabled
  final int messageAutoDeleteTime;

  /// [fromUserId] If not 0, a user identifier, which default setting was
  /// automatically applied
  final int fromUserId;

  static const String constructor = 'messageChatSetMessageAutoDeleteTime';

  static MessageChatSetMessageAutoDeleteTime? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatSetMessageAutoDeleteTime(
      messageAutoDeleteTime: json['message_auto_delete_time'] as int,
      fromUserId: json['from_user_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_auto_delete_time': messageAutoDeleteTime,
        'from_user_id': fromUserId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
