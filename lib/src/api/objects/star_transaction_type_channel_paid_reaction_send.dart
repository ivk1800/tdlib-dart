import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a sending of a paid reaction to a message in a channel
/// chat by the current user; for regular users only
@immutable
class StarTransactionTypeChannelPaidReactionSend extends StarTransactionType {
  const StarTransactionTypeChannelPaidReactionSend({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Identifier of the channel chat
  final int chatId;

  /// [messageId] Identifier of the reacted message; can be 0 or an identifier
  /// of a deleted message
  final int messageId;

  static const String constructor =
      'starTransactionTypeChannelPaidReactionSend';

  static StarTransactionTypeChannelPaidReactionSend? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelPaidReactionSend(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
    );
  }

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
