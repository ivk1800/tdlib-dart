import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Resends messages which failed to send. Can be called only for messages for
/// which messageSendingStateFailed.can_retry is true and after specified in
/// messageSendingStateFailed.retry_after time passed.. If a message is
/// re-sent, the corresponding failed to send message is deleted. Returns the
/// sent messages in the same order as the message identifiers passed in
/// message_ids. If a message can't be re-sent, null will be returned instead
/// of the message
/// Returns [Messages]
class ResendMessages extends TdFunction {
  ResendMessages({required this.chatId, required this.messageIds});

  /// [chatId] Identifier of the chat to send messages
  final int chatId;

  /// [messageIds] Identifiers of the messages to resend. Message identifiers
  /// must be in a strictly increasing order
  final List<int> messageIds;

  static const String CONSTRUCTOR = 'resendMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
