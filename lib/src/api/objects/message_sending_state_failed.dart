import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message failed to be sent
@immutable
class MessageSendingStateFailed extends MessageSendingState {
  const MessageSendingStateFailed({
    required this.error,
    required this.canRetry,
    required this.needAnotherSender,
    required this.needAnotherReplyQuote,
    required this.needDropReply,
    required this.retryAfter,
  });

  /// [error] The cause of the message sending failure
  final TdError error;

  /// [canRetry] True, if the message can be re-sent using resendMessages or
  /// readdQuickReplyShortcutMessages
  final bool canRetry;

  /// [needAnotherSender] True, if the message can be re-sent only on behalf of
  /// a different sender
  final bool needAnotherSender;

  /// [needAnotherReplyQuote] True, if the message can be re-sent only if
  /// another quote is chosen in the message that is replied by the given
  /// message
  final bool needAnotherReplyQuote;

  /// [needDropReply] True, if the message can be re-sent only if the message to
  /// be replied is removed. This will be done automatically by resendMessages
  final bool needDropReply;

  /// [retryAfter] Time left before the message can be re-sent, in seconds. No
  /// update is sent when this field changes
  final double retryAfter;

  static const String constructor = 'messageSendingStateFailed';

  static MessageSendingStateFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendingStateFailed(
      error: TdError.fromJson(json['error'] as Map<String, dynamic>?)!,
      canRetry: json['can_retry'] as bool,
      needAnotherSender: json['need_another_sender'] as bool,
      needAnotherReplyQuote: json['need_another_reply_quote'] as bool,
      needDropReply: json['need_drop_reply'] as bool,
      retryAfter: (json['retry_after'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'error': error.toJson(),
        'can_retry': canRetry,
        'need_another_sender': needAnotherSender,
        'need_another_reply_quote': needAnotherReplyQuote,
        'need_drop_reply': needDropReply,
        'retry_after': retryAfter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
