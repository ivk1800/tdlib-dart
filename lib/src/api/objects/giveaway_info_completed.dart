import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a completed giveaway
@immutable
class GiveawayInfoCompleted extends GiveawayInfo {
  const GiveawayInfoCompleted({
    required this.creationDate,
    required this.actualWinnersSelectionDate,
    required this.wasRefunded,
    required this.isWinner,
    required this.winnerCount,
    required this.activationCount,
    required this.giftCode,
    required this.wonStarCount,
  });

  /// [creationDate] Point in time (Unix timestamp) when the giveaway was
  /// created
  final int creationDate;

  /// [actualWinnersSelectionDate] Point in time (Unix timestamp) when the
  /// winners were selected. May be bigger than winners selection date specified
  /// in parameters of the giveaway
  final int actualWinnersSelectionDate;

  /// [wasRefunded] True, if the giveaway was canceled and was fully refunded
  final bool wasRefunded;

  /// [isWinner] True, if the current user is a winner of the giveaway
  final bool isWinner;

  /// [winnerCount] Number of winners in the giveaway
  final int winnerCount;

  /// [activationCount] Number of winners, which activated their gift codes; for
  /// Telegram Premium giveaways only
  final int activationCount;

  /// [giftCode] Telegram Premium gift code that was received by the current
  /// user; empty if the user isn't a winner in the giveaway or the giveaway
  /// isn't a Telegram Premium giveaway
  final String giftCode;

  /// [wonStarCount] The amount of Telegram Stars won by the current user; 0 if
  /// the user isn't a winner in the giveaway or the giveaway isn't a Telegram
  /// Star giveaway
  final int wonStarCount;

  static const String constructor = 'giveawayInfoCompleted';

  static GiveawayInfoCompleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayInfoCompleted(
      creationDate: json['creation_date'] as int,
      actualWinnersSelectionDate: json['actual_winners_selection_date'] as int,
      wasRefunded: json['was_refunded'] as bool,
      isWinner: json['is_winner'] as bool,
      winnerCount: json['winner_count'] as int,
      activationCount: json['activation_count'] as int,
      giftCode: json['gift_code'] as String,
      wonStarCount: json['won_star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'creation_date': creationDate,
        'actual_winners_selection_date': actualWinnersSelectionDate,
        'was_refunded': wasRefunded,
        'is_winner': isWinner,
        'winner_count': winnerCount,
        'activation_count': activationCount,
        'gift_code': giftCode,
        'won_star_count': wonStarCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
