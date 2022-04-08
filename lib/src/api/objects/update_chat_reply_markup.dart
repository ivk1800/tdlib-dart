import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The default chat reply markup was changed. Can occur because new messages
/// with reply markup were received or because an old reply markup was hidden
/// by the user
@immutable
class UpdateChatReplyMarkup extends Update {
  const UpdateChatReplyMarkup({
    required this.chatId,
    required this.replyMarkupMessageId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup
  /// needs to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  static const String constructor = 'updateChatReplyMarkup';

  static UpdateChatReplyMarkup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatReplyMarkup(
      chatId: json['chat_id'],
      replyMarkupMessageId: json['reply_markup_message_id'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'reply_markup_message_id': replyMarkupMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
