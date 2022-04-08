import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits the content of a message with an animation, an audio, a document, a
/// photo or a video in an inline message sent via a bot; for bots only
/// Returns [Ok]
@immutable
class EditInlineMessageMedia extends TdFunction {
  const EditInlineMessageMedia({
    required this.inlineMessageId,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none; for bots
  /// only
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] New content of the message. Must be one of the
  /// following types: inputMessageAnimation, inputMessageAudio,
  /// inputMessageDocument, inputMessagePhoto or inputMessageVideo
  final InputMessageContent inputMessageContent;

  static const String constructor = 'editInlineMessageMedia';

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
