import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Stars were received by the current user from a giveaway
@immutable
class MessageGiveawayPrizeStars extends MessageContent {
  const MessageGiveawayPrizeStars({
    required this.starCount,
    required this.transactionId,
    required this.boostedChatId,
    required this.giveawayMessageId,
    required this.isUnclaimed,
    this.sticker,
  });

  /// [starCount] Number of Telegram Stars that were received
  final int starCount;

  /// [transactionId] Identifier of the transaction for Telegram Stars credit
  final String transactionId;

  /// [boostedChatId] Identifier of the supergroup or channel chat, which was
  /// automatically boosted by the winners of the giveaway
  final int boostedChatId;

  /// [giveawayMessageId] Identifier of the message with the giveaway in the
  /// boosted chat; can be 0 if the message was deleted
  final int giveawayMessageId;

  /// [isUnclaimed] True, if the corresponding winner wasn't chosen and the
  /// Telegram Stars were received by the owner of the boosted chat
  final bool isUnclaimed;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiveawayPrizeStars';

  static MessageGiveawayPrizeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiveawayPrizeStars(
      starCount: json['star_count'] as int,
      transactionId: json['transaction_id'] as String,
      boostedChatId: json['boosted_chat_id'] as int,
      giveawayMessageId: json['giveaway_message_id'] as int,
      isUnclaimed: json['is_unclaimed'] as bool,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        'transaction_id': transactionId,
        'boosted_chat_id': boostedChatId,
        'giveaway_message_id': giveawayMessageId,
        'is_unclaimed': isUnclaimed,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
