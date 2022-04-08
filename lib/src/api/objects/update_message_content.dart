import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message content has changed
@immutable
class UpdateMessageContent extends Update {
  const UpdateMessageContent({
    required this.chatId,
    required this.messageId,
    required this.newContent,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [newContent] New message content
  final MessageContent newContent;

  static const String constructor = 'updateMessageContent';

  static UpdateMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageContent(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      newContent: MessageContent.fromJson(json['new_content'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'new_content': newContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
