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
    required this.fromChatId,
    required this.messageIds,
    this.options,
    required this.sendCopy,
    required this.removeCaption,
    required this.onlyPreview,
  });

  /// [chatId] Identifier of the chat to which to forward messages
  final int chatId;

  /// [fromChatId] Identifier of the chat from which to forward messages
  final int fromChatId;

  /// [messageIds] Identifiers of the messages to forward. Message identifiers
  /// must be in a strictly increasing order. At most 100 messages can be
  /// forwarded simultaneously
  final List<int> messageIds;

  /// [options] Options to be used to send the messages; pass null to use
  /// default options
  final MessageSendOptions? options;

  /// [sendCopy] If true, content of the messages will be copied without
  /// reference to the original sender. Always true if the messages are
  /// forwarded to a secret chat or are local
  final bool sendCopy;

  /// [removeCaption] If true, media caption of message copies will be removed.
  /// Ignored if send_copy is false
  final bool removeCaption;

  /// [onlyPreview] If true, messages will not be forwarded and instead fake
  /// messages will be returned
  final bool onlyPreview;

  static const String constructor = 'forwardMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'from_chat_id': fromChatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'options': options?.toJson(),
        'send_copy': sendCopy,
        'remove_caption': removeCaption,
        'only_preview': onlyPreview,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
