import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message was edited. Changes in the message content will come in a
/// separate updateMessageContent
@immutable
class UpdateMessageEdited extends Update {
  const UpdateMessageEdited({
    required this.chatId,
    required this.messageId,
    required this.editDate,
    this.replyMarkup,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [editDate] Point in time (Unix timestamp) when the message was edited
  final int editDate;

  /// [replyMarkup] New message reply markup; may be null
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'updateMessageEdited';

  static UpdateMessageEdited? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageEdited(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      editDate: json['edit_date'] as int,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'edit_date': editDate,
        'reply_markup': replyMarkup?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
