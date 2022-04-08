import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits the message reply markup; for bots only. Returns the edited message
/// after the edit is completed on the server side
/// Returns [Message]
@immutable
class EditMessageReplyMarkup extends TdFunction {
  const EditMessageReplyMarkup({
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
  });

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'editMessageReplyMarkup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'reply_markup': replyMarkup?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
