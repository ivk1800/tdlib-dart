import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Forwards previously sent messages. Returns the forwarded messages in the
/// same order as the message identifiers passed in message_ids. If a message
/// can't be forwarded, null will be returned instead of the message
/// Returns [Messages]
@immutable
class ForwardMessages extends TdFunction {
  const ForwardMessages({
    required this.chatId,
    required this.messageThreadId,
    required this.fromChatId,
    required this.messageIds,
    this.options,
    required this.sendCopy,
    required this.removeCaption,
  });

  /// [chatId] Identifier of the chat to which to forward messages
  final int chatId;

  /// [messageThreadId] If not 0, the message thread identifier in which the
  /// message will be sent; for forum threads only
  final int messageThreadId;

  /// [fromChatId] Identifier of the chat from which to forward messages
  final int fromChatId;

  /// [messageIds] Identifiers of the messages to forward. Message identifiers
  /// must be in a strictly increasing order. At most 100 messages can be
  /// forwarded simultaneously. A message can be forwarded only if
  /// messageProperties.can_be_forwarded
  final List<int> messageIds;

  /// [options] Options to be used to send the messages; pass null to use
  /// default options
  final MessageSendOptions? options;

  /// [sendCopy] Pass true to copy content of the messages without reference to
  /// the original sender. Always true if the messages are forwarded to a secret
  /// chat or are local. Use messageProperties.can_be_saved and
  /// messageProperties.can_be_copied_to_secret_chat to check whether the
  /// message is suitable
  final bool sendCopy;

  /// [removeCaption] Pass true to remove media captions of message copies.
  /// Ignored if send_copy is false
  final bool removeCaption;

  static const String constructor = 'forwardMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_thread_id': messageThreadId,
        'from_chat_id': fromChatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'options': options?.toJson(),
        'send_copy': sendCopy,
        'remove_caption': removeCaption,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
