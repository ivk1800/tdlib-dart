import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Premium giveaway with public winners has been completed for the
/// chat
@immutable
class MessagePremiumGiveawayWinners extends MessageContent {
  const MessagePremiumGiveawayWinners({
    required this.boostedChatId,
    required this.giveawayMessageId,
    required this.additionalChatCount,
    required this.actualWinnersSelectionDate,
    required this.onlyNewMembers,
    required this.wasRefunded,
    required this.monthCount,
    required this.prizeDescription,
    required this.winnerCount,
    required this.winnerUserIds,
    required this.unclaimedPrizeCount,
  });

  /// [boostedChatId] Identifier of the channel chat, which was automatically
  /// boosted by the winners of the giveaway for duration of the Premium
  /// subscription
  final int boostedChatId;

  /// [giveawayMessageId] Identifier of the message with the giveaway in the
  /// boosted chat
  final int giveawayMessageId;

  /// [additionalChatCount] Number of other chats that participated in the
  /// giveaway
  final int additionalChatCount;

  /// [actualWinnersSelectionDate] Point in time (Unix timestamp) when the
  /// winners were selected. May be bigger than winners selection date specified
  /// in parameters of the giveaway
  final int actualWinnersSelectionDate;

  /// [onlyNewMembers] True, if only new members of the chats were eligible for
  /// the giveaway
  final bool onlyNewMembers;

  /// [wasRefunded] True, if the giveaway was canceled and was fully refunded
  final bool wasRefunded;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation
  final int monthCount;

  /// [prizeDescription] Additional description of the giveaway prize
  final String prizeDescription;

  /// [winnerCount] Total number of winners in the giveaway
  final int winnerCount;

  /// [winnerUserIds] Up to 100 user identifiers of the winners of the giveaway
  final List<int> winnerUserIds;

  /// [unclaimedPrizeCount] Number of undistributed prizes
  final int unclaimedPrizeCount;

  static const String constructor = 'messagePremiumGiveawayWinners';

  static MessagePremiumGiveawayWinners? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePremiumGiveawayWinners(
      boostedChatId: json['boosted_chat_id'] as int,
      giveawayMessageId: json['giveaway_message_id'] as int,
      additionalChatCount: json['additional_chat_count'] as int,
      actualWinnersSelectionDate: json['actual_winners_selection_date'] as int,
      onlyNewMembers: json['only_new_members'] as bool,
      wasRefunded: json['was_refunded'] as bool,
      monthCount: json['month_count'] as int,
      prizeDescription: json['prize_description'] as String,
      winnerCount: json['winner_count'] as int,
      winnerUserIds: List<int>.from(
          ((json['winner_user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      unclaimedPrizeCount: json['unclaimed_prize_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'boosted_chat_id': boostedChatId,
        'giveaway_message_id': giveawayMessageId,
        'additional_chat_count': additionalChatCount,
        'actual_winners_selection_date': actualWinnersSelectionDate,
        'only_new_members': onlyNewMembers,
        'was_refunded': wasRefunded,
        'month_count': monthCount,
        'prize_description': prizeDescription,
        'winner_count': winnerCount,
        'winner_user_ids': winnerUserIds.map((item) => item).toList(),
        'unclaimed_prize_count': unclaimedPrizeCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
