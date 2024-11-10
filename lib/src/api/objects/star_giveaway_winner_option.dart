import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an option for the number of winners of a Telegram Star giveaway
@immutable
class StarGiveawayWinnerOption extends TdObject {
  const StarGiveawayWinnerOption({
    required this.winnerCount,
    required this.wonStarCount,
    required this.isDefault,
  });

  /// [winnerCount] The number of users that will be chosen as winners
  final int winnerCount;

  /// [wonStarCount] The number of Telegram Stars that will be won by the
  /// winners of the giveaway
  final int wonStarCount;

  /// [isDefault] True, if the option must be chosen by default
  final bool isDefault;

  static const String constructor = 'starGiveawayWinnerOption';

  static StarGiveawayWinnerOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarGiveawayWinnerOption(
      winnerCount: json['winner_count'] as int,
      wonStarCount: json['won_star_count'] as int,
      isDefault: json['is_default'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'winner_count': winnerCount,
        'won_star_count': wonStarCount,
        'is_default': isDefault,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
