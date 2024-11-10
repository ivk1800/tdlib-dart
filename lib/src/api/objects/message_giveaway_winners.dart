import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A giveaway with public winners has been completed for the chat
@immutable
class MessageGiveawayWinners extends MessageContent {
  const MessageGiveawayWinners({
    required this.boostedChatId,
    required this.giveawayMessageId,
    required this.additionalChatCount,
    required this.actualWinnersSelectionDate,
    required this.onlyNewMembers,
    required this.wasRefunded,
    required this.prize,
    required this.prizeDescription,
    required this.winnerCount,
    required this.winnerUserIds,
    required this.unclaimedPrizeCount,
  });

  /// [boostedChatId] Identifier of the supergroup or channel chat, which was
  /// automatically boosted by the winners of the giveaway
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

  /// [prize] Prize of the giveaway
  final GiveawayPrize prize;

  /// [prizeDescription] Additional description of the giveaway prize
  final String prizeDescription;

  /// [winnerCount] Total number of winners in the giveaway
  final int winnerCount;

  /// [winnerUserIds] Up to 100 user identifiers of the winners of the giveaway
  final List<int> winnerUserIds;

  /// [unclaimedPrizeCount] Number of undistributed prizes; for Telegram Premium
  /// giveaways only
  final int unclaimedPrizeCount;

  static const String constructor = 'messageGiveawayWinners';

  static MessageGiveawayWinners? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiveawayWinners(
      boostedChatId: json['boosted_chat_id'] as int,
      giveawayMessageId: json['giveaway_message_id'] as int,
      additionalChatCount: json['additional_chat_count'] as int,
      actualWinnersSelectionDate: json['actual_winners_selection_date'] as int,
      onlyNewMembers: json['only_new_members'] as bool,
      wasRefunded: json['was_refunded'] as bool,
      prize: GiveawayPrize.fromJson(json['prize'] as Map<String, dynamic>?)!,
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
        'prize': prize.toJson(),
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
