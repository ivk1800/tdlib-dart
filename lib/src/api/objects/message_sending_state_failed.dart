import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The message failed to be sent
class MessageSendingStateFailed extends MessageSendingState {
  MessageSendingStateFailed(
      {required this.errorCode,
      required this.errorMessage,
      required this.canRetry,
      required this.needAnotherSender,
      required this.retryAfter});

  /// [errorCode] An error code; 0 if unknown
  final int errorCode;

  /// [errorMessage] Error message
  final String errorMessage;

  /// [canRetry] True, if the message can be re-sent
  final bool canRetry;

  /// [needAnotherSender] True, if the message can be re-sent only on behalf of
  /// a different sender
  final bool needAnotherSender;

  /// [retryAfter] Time left before the message can be re-sent, in seconds. No
  /// update is sent when this field changes
  final double retryAfter;

  static const String CONSTRUCTOR = 'messageSendingStateFailed';

  static MessageSendingStateFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendingStateFailed(
        errorCode: json['error_code'],
        errorMessage: json['error_message'],
        canRetry: json['can_retry'],
        needAnotherSender: json['need_another_sender'],
        retryAfter: json['retry_after']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'error_code': this.errorCode,
        'error_message': this.errorMessage,
        'can_retry': this.canRetry,
        'need_another_sender': this.needAnotherSender,
        'retry_after': this.retryAfter,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
