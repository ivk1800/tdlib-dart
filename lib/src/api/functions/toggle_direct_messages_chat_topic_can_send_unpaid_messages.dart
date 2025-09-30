import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Allows to send unpaid messages to the given topic of the channel direct
/// messages chat administered by the current user
/// Returns [Ok]
@immutable
class ToggleDirectMessagesChatTopicCanSendUnpaidMessages extends TdFunction {
  const ToggleDirectMessagesChatTopicCanSendUnpaidMessages({
    required this.chatId,
    required this.topicId,
    required this.canSendUnpaidMessages,
    required this.refundPayments,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [topicId] Identifier of the topic
  final int topicId;

  /// [canSendUnpaidMessages] Pass true to allow unpaid messages; pass false to
  /// disallow unpaid messages
  final bool canSendUnpaidMessages;

  /// [refundPayments] Pass true to refund the user previously paid messages
  final bool refundPayments;

  static const String constructor =
      'toggleDirectMessagesChatTopicCanSendUnpaidMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'topic_id': topicId,
    'can_send_unpaid_messages': canSendUnpaidMessages,
    'refund_payments': refundPayments,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
