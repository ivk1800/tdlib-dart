import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits the caption of an inline message sent via a bot; for bots only
/// Returns [Ok]
@immutable
class EditInlineMessageCaption extends TdFunction {
  const EditInlineMessageCaption({
    required this.inlineMessageId,
    this.replyMarkup,
    this.caption,
  });

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [caption] New message content caption; pass null to remove caption;
  /// 0-GetOption("message_caption_length_max") characters
  final FormattedText? caption;

  static const String constructor = 'editInlineMessageCaption';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_message_id': inlineMessageId,
        'reply_markup': replyMarkup?.toJson(),
        'caption': caption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
