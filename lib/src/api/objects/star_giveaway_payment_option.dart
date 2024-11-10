import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an option for creating Telegram Star giveaway. Use
/// telegramPaymentPurposeStarGiveaway for out-of-store payments
@immutable
class StarGiveawayPaymentOption extends TdObject {
  const StarGiveawayPaymentOption({
    required this.currency,
    required this.amount,
    required this.starCount,
    required this.storeProductId,
    required this.yearlyBoostCount,
    required this.winnerOptions,
    required this.isDefault,
    required this.isAdditional,
  });

  /// [currency] ISO 4217 currency code for the payment
  final String currency;

  /// [amount] The amount to pay, in the smallest units of the currency
  final int amount;

  /// [starCount] Number of Telegram Stars that will be distributed among
  /// winners
  final int starCount;

  /// [storeProductId] Identifier of the store product associated with the
  /// option; may be empty if none
  final String storeProductId;

  /// [yearlyBoostCount] Number of times the chat will be boosted for one year
  /// if the option is chosen
  final int yearlyBoostCount;

  /// [winnerOptions] Allowed options for the number of giveaway winners
  final List<StarGiveawayWinnerOption> winnerOptions;

  /// [isDefault] True, if the option must be chosen by default
  final bool isDefault;

  /// [isAdditional] True, if the option must be shown only in the full list of
  /// payment options
  final bool isAdditional;

  static const String constructor = 'starGiveawayPaymentOption';

  static StarGiveawayPaymentOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarGiveawayPaymentOption(
      currency: json['currency'] as String,
      amount: json['amount'] as int,
      starCount: json['star_count'] as int,
      storeProductId: json['store_product_id'] as String,
      yearlyBoostCount: json['yearly_boost_count'] as int,
      winnerOptions: List<StarGiveawayWinnerOption>.from(
          ((json['winner_options'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => StarGiveawayWinnerOption.fromJson(item))
              .toList()),
      isDefault: json['is_default'] as bool,
      isAdditional: json['is_additional'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'currency': currency,
        'amount': amount,
        'star_count': starCount,
        'store_product_id': storeProductId,
        'yearly_boost_count': yearlyBoostCount,
        'winner_options': winnerOptions.map((item) => item.toJson()).toList(),
        'is_default': isDefault,
        'is_additional': isAdditional,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
