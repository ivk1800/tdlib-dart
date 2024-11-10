import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Stops a poll sent on behalf of a business account; for bots only
/// Returns [BusinessMessage]
@immutable
class StopBusinessPoll extends TdFunction {
  const StopBusinessPoll({
    required this.businessConnectionId,
    required this.chatId,
    required this.messageId,
    this.replyMarkup,
  });

  /// [businessConnectionId] Unique identifier of business connection on behalf
  /// of which the message with the poll was sent
  final String businessConnectionId;

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message containing the poll
  final int messageId;

  /// [replyMarkup] The new message reply markup; pass null if none
  final ReplyMarkup? replyMarkup;

  static const String constructor = 'stopBusinessPoll';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
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
