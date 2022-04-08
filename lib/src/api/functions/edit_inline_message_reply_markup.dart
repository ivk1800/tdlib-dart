import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits the reply markup of an inline message sent via a bot; for bots only
/// Returns [Ok]
@immutable
class EditInlineMessageReplyMarkup extends TdFunction {
  const EditInlineMessageReplyMarkup({
    required this.inlineMessageId,
    this.replyMarkup,
  });

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'editInlineMessageReplyMarkup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'inline_message_id': inlineMessageId,
        'reply_markup': replyMarkup?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
