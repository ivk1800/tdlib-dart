import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Premium giveaway without public winners has been completed for
/// the chat
@immutable
class MessagePremiumGiveawayCompleted extends MessageContent {
  const MessagePremiumGiveawayCompleted({
    required this.giveawayMessageId,
    required this.winnerCount,
    required this.unclaimedPrizeCount,
  });

  /// [giveawayMessageId] Identifier of the message with the giveaway; can be 0
  /// if the message was deleted
  final int giveawayMessageId;

  /// [winnerCount] Number of winners in the giveaway
  final int winnerCount;

  /// [unclaimedPrizeCount] Number of undistributed prizes
  final int unclaimedPrizeCount;

  static const String constructor = 'messagePremiumGiveawayCompleted';

  static MessagePremiumGiveawayCompleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePremiumGiveawayCompleted(
      giveawayMessageId: json['giveaway_message_id'] as int,
      winnerCount: json['winner_count'] as int,
      unclaimedPrizeCount: json['unclaimed_prize_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'giveaway_message_id': giveawayMessageId,
        'winner_count': winnerCount,
        'unclaimed_prize_count': unclaimedPrizeCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
