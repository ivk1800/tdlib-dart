import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new member was accepted to the chat by an administrator
@immutable
class MessageChatJoinByRequest extends MessageContent {
  const MessageChatJoinByRequest();

  static const String constructor = 'messageChatJoinByRequest';

  static MessageChatJoinByRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageChatJoinByRequest();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
