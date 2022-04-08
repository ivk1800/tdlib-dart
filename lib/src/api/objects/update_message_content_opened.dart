import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message content was opened. Updates voice note messages to "listened",
/// video note messages to "viewed" and starts the TTL timer for
/// self-destructing messages
@immutable
class UpdateMessageContentOpened extends Update {
  const UpdateMessageContentOpened({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'updateMessageContentOpened';

  static UpdateMessageContentOpened? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageContentOpened(
      chatId: json['chat_id'],
      messageId: json['message_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
