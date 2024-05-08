import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a message on behalf of a business account; for bots only. Returns
/// the message after it was sent
/// Returns [BusinessMessage]
@immutable
class SendBusinessMessage extends TdFunction {
  const SendBusinessMessage({
    required this.businessConnectionId,
    required this.chatId,
    this.replyTo,
    required this.disableNotification,
    required this.protectContent,
    this.replyMarkup,
    required this.inputMessageContent,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which to send the request
  final String businessConnectionId;

  /// [chatId] Target chat
  final int chatId;

  /// [replyTo] Information about the message to be replied; pass null if none
  final InputMessageReplyTo? replyTo;

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [protectContent] Pass true if the content of the message must be protected
  /// from forwarding and saving
  final bool protectContent;

  /// [replyMarkup] Markup for replying to the message; pass null if none
  final ReplyMarkup? replyMarkup;

  /// [inputMessageContent] The content of the message to be sent
  final InputMessageContent inputMessageContent;

  static const String constructor = 'sendBusinessMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'chat_id': chatId,
        'reply_to': replyTo?.toJson(),
        'disable_notification': disableNotification,
        'protect_content': protectContent,
        'reply_markup': replyMarkup?.toJson(),
        'input_message_content': inputMessageContent.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
