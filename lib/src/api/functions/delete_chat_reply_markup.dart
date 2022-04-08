import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes the default reply markup from a chat. Must be called after a
/// one-time keyboard or a ForceReply reply markup has been used.
/// UpdateChatReplyMarkup will be sent if the reply markup is changed
/// Returns [Ok]
@immutable
class DeleteChatReplyMarkup extends TdFunction {
  const DeleteChatReplyMarkup({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] The message identifier of the used keyboard
  final int messageId;

  static const String constructor = 'deleteChatReplyMarkup';

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
