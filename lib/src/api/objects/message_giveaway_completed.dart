import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A giveaway without public winners has been completed for the chat
@immutable
class MessageGiveawayCompleted extends MessageContent {
  const MessageGiveawayCompleted({
    required this.giveawayMessageId,
    required this.winnerCount,
    required this.isStarGiveaway,
    required this.unclaimedPrizeCount,
  });

  /// [giveawayMessageId] Identifier of the message with the giveaway; can be 0
  /// if the message was deleted
  final int giveawayMessageId;

  /// [winnerCount] Number of winners in the giveaway
  final int winnerCount;

  /// [isStarGiveaway] True, if the giveaway is a Telegram Star giveaway
  final bool isStarGiveaway;

  /// [unclaimedPrizeCount] Number of undistributed prizes; for Telegram Premium
  /// giveaways only
  final int unclaimedPrizeCount;

  static const String constructor = 'messageGiveawayCompleted';

  static MessageGiveawayCompleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiveawayCompleted(
      giveawayMessageId: json['giveaway_message_id'] as int,
      winnerCount: json['winner_count'] as int,
      isStarGiveaway: json['is_star_giveaway'] as bool,
      unclaimedPrizeCount: json['unclaimed_prize_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'giveaway_message_id': giveawayMessageId,
        'winner_count': winnerCount,
        'is_star_giveaway': isStarGiveaway,
        'unclaimed_prize_count': unclaimedPrizeCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
