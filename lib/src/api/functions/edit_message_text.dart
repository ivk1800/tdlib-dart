import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits the text of a message (or a text of a game message). Returns the
/// edited message after the edit is completed on the server side
/// Returns [Message]
@immutable
class EditMessageText extends TdFunction {
  const EditMessageText({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New text content of the message. Must be of type
  /// inputMessageText
  final InputMessageContent inputMessageContent;

  static const String constructor = 'editMessageText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
