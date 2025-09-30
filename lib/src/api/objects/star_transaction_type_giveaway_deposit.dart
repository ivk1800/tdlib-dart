import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a deposit of Telegram Stars from a giveaway; for
/// regular users only
@immutable
class StarTransactionTypeGiveawayDeposit extends StarTransactionType {
  const StarTransactionTypeGiveawayDeposit({
    required this.chatId,
    required this.giveawayMessageId,
  });

  /// [chatId] Identifier of a supergroup or a channel chat that created the
  /// giveaway
  final int chatId;

  /// [giveawayMessageId] Identifier of the message with the giveaway; can be 0
  /// or an identifier of a deleted message
  final int giveawayMessageId;

  static const String constructor = 'starTransactionTypeGiveawayDeposit';

  static StarTransactionTypeGiveawayDeposit? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeGiveawayDeposit(
      chatId: json['chat_id'] as int,
      giveawayMessageId: json['giveaway_message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'giveaway_message_id': giveawayMessageId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
