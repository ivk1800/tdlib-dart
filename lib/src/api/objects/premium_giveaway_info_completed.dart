import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a completed giveaway
@immutable
class PremiumGiveawayInfoCompleted extends PremiumGiveawayInfo {
  const PremiumGiveawayInfoCompleted({
    required this.creationDate,
    required this.actualWinnersSelectionDate,
    required this.wasRefunded,
    required this.winnerCount,
    required this.activationCount,
    required this.giftCode,
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

  /// [winnerCount] Number of winners in the giveaway
  final int winnerCount;

  /// [activationCount] Number of winners, which activated their gift codes
  final int activationCount;

  /// [giftCode] Telegram Premium gift code that was received by the current
  /// user; empty if the user isn't a winner in the giveaway
  final String giftCode;

  static const String constructor = 'premiumGiveawayInfoCompleted';

  static PremiumGiveawayInfoCompleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiveawayInfoCompleted(
      creationDate: json['creation_date'] as int,
      actualWinnersSelectionDate: json['actual_winners_selection_date'] as int,
      wasRefunded: json['was_refunded'] as bool,
      winnerCount: json['winner_count'] as int,
      activationCount: json['activation_count'] as int,
      giftCode: json['gift_code'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'creation_date': creationDate,
        'actual_winners_selection_date': actualWinnersSelectionDate,
        'was_refunded': wasRefunded,
        'winner_count': winnerCount,
        'activation_count': activationCount,
        'gift_code': giftCode,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
