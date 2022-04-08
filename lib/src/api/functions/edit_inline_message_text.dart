import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits the text of an inline text or game message sent via a bot; for bots
/// only
/// Returns [Ok]
@immutable
class EditInlineMessageText extends TdFunction {
  const EditInlineMessageText({
    required this.inlineMessageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New text content of the message. Must be of type
  /// inputMessageText
  final InputMessageContent inputMessageContent;

  static const String constructor = 'editInlineMessageText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_message_id': inlineMessageId,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
