import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of transaction with Telegram Stars
@immutable
abstract class StarTransactionType extends TdObject {
  const StarTransactionType();

  static const String constructor = 'starTransactionType';

  /// Inherited by:
  /// [StarTransactionTypeAffiliateProgramCommission]
  /// [StarTransactionTypeAppStoreDeposit]
  /// [StarTransactionTypeBotInvoicePurchase]
  /// [StarTransactionTypeBotInvoiceSale]
  /// [StarTransactionTypeBotPaidMediaPurchase]
  /// [StarTransactionTypeBotPaidMediaSale]
  /// [StarTransactionTypeBotSubscriptionPurchase]
  /// [StarTransactionTypeBotSubscriptionSale]
  /// [StarTransactionTypeBusinessBotTransferReceive]
  /// [StarTransactionTypeBusinessBotTransferSend]
  /// [StarTransactionTypeChannelPaidMediaPurchase]
  /// [StarTransactionTypeChannelPaidMediaSale]
  /// [StarTransactionTypeChannelPaidReactionReceive]
  /// [StarTransactionTypeChannelPaidReactionSend]
  /// [StarTransactionTypeChannelSubscriptionPurchase]
  /// [StarTransactionTypeChannelSubscriptionSale]
  /// [StarTransactionTypeFragmentDeposit]
  /// [StarTransactionTypeFragmentWithdrawal]
  /// [StarTransactionTypeGiftPurchase]
  /// [StarTransactionTypeGiftSale]
  /// [StarTransactionTypeGiftTransfer]
  /// [StarTransactionTypeGiftUpgrade]
  /// [StarTransactionTypeGiveawayDeposit]
  /// [StarTransactionTypeGooglePlayDeposit]
  /// [StarTransactionTypePaidMessageReceive]
  /// [StarTransactionTypePaidMessageSend]
  /// [StarTransactionTypePremiumBotDeposit]
  /// [StarTransactionTypePremiumPurchase]
  /// [StarTransactionTypeTelegramAdsWithdrawal]
  /// [StarTransactionTypeTelegramApiUsage]
  /// [StarTransactionTypeUnsupported]
  /// [StarTransactionTypeUpgradedGiftPurchase]
  /// [StarTransactionTypeUpgradedGiftSale]
  /// [StarTransactionTypeUserDeposit]
  static StarTransactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StarTransactionTypeAffiliateProgramCommission.constructor:
        return StarTransactionTypeAffiliateProgramCommission.fromJson(json);
      case StarTransactionTypeAppStoreDeposit.constructor:
        return StarTransactionTypeAppStoreDeposit.fromJson(json);
      case StarTransactionTypeBotInvoicePurchase.constructor:
        return StarTransactionTypeBotInvoicePurchase.fromJson(json);
      case StarTransactionTypeBotInvoiceSale.constructor:
        return StarTransactionTypeBotInvoiceSale.fromJson(json);
      case StarTransactionTypeBotPaidMediaPurchase.constructor:
        return StarTransactionTypeBotPaidMediaPurchase.fromJson(json);
      case StarTransactionTypeBotPaidMediaSale.constructor:
        return StarTransactionTypeBotPaidMediaSale.fromJson(json);
      case StarTransactionTypeBotSubscriptionPurchase.constructor:
        return StarTransactionTypeBotSubscriptionPurchase.fromJson(json);
      case StarTransactionTypeBotSubscriptionSale.constructor:
        return StarTransactionTypeBotSubscriptionSale.fromJson(json);
      case StarTransactionTypeBusinessBotTransferReceive.constructor:
        return StarTransactionTypeBusinessBotTransferReceive.fromJson(json);
      case StarTransactionTypeBusinessBotTransferSend.constructor:
        return StarTransactionTypeBusinessBotTransferSend.fromJson(json);
      case StarTransactionTypeChannelPaidMediaPurchase.constructor:
        return StarTransactionTypeChannelPaidMediaPurchase.fromJson(json);
      case StarTransactionTypeChannelPaidMediaSale.constructor:
        return StarTransactionTypeChannelPaidMediaSale.fromJson(json);
      case StarTransactionTypeChannelPaidReactionReceive.constructor:
        return StarTransactionTypeChannelPaidReactionReceive.fromJson(json);
      case StarTransactionTypeChannelPaidReactionSend.constructor:
        return StarTransactionTypeChannelPaidReactionSend.fromJson(json);
      case StarTransactionTypeChannelSubscriptionPurchase.constructor:
        return StarTransactionTypeChannelSubscriptionPurchase.fromJson(json);
      case StarTransactionTypeChannelSubscriptionSale.constructor:
        return StarTransactionTypeChannelSubscriptionSale.fromJson(json);
      case StarTransactionTypeFragmentDeposit.constructor:
        return StarTransactionTypeFragmentDeposit.fromJson(json);
      case StarTransactionTypeFragmentWithdrawal.constructor:
        return StarTransactionTypeFragmentWithdrawal.fromJson(json);
      case StarTransactionTypeGiftPurchase.constructor:
        return StarTransactionTypeGiftPurchase.fromJson(json);
      case StarTransactionTypeGiftSale.constructor:
        return StarTransactionTypeGiftSale.fromJson(json);
      case StarTransactionTypeGiftTransfer.constructor:
        return StarTransactionTypeGiftTransfer.fromJson(json);
      case StarTransactionTypeGiftUpgrade.constructor:
        return StarTransactionTypeGiftUpgrade.fromJson(json);
      case StarTransactionTypeGiveawayDeposit.constructor:
        return StarTransactionTypeGiveawayDeposit.fromJson(json);
      case StarTransactionTypeGooglePlayDeposit.constructor:
        return StarTransactionTypeGooglePlayDeposit.fromJson(json);
      case StarTransactionTypePaidMessageReceive.constructor:
        return StarTransactionTypePaidMessageReceive.fromJson(json);
      case StarTransactionTypePaidMessageSend.constructor:
        return StarTransactionTypePaidMessageSend.fromJson(json);
      case StarTransactionTypePremiumBotDeposit.constructor:
        return StarTransactionTypePremiumBotDeposit.fromJson(json);
      case StarTransactionTypePremiumPurchase.constructor:
        return StarTransactionTypePremiumPurchase.fromJson(json);
      case StarTransactionTypeTelegramAdsWithdrawal.constructor:
        return StarTransactionTypeTelegramAdsWithdrawal.fromJson(json);
      case StarTransactionTypeTelegramApiUsage.constructor:
        return StarTransactionTypeTelegramApiUsage.fromJson(json);
      case StarTransactionTypeUnsupported.constructor:
        return StarTransactionTypeUnsupported.fromJson(json);
      case StarTransactionTypeUpgradedGiftPurchase.constructor:
        return StarTransactionTypeUpgradedGiftPurchase.fromJson(json);
      case StarTransactionTypeUpgradedGiftSale.constructor:
        return StarTransactionTypeUpgradedGiftSale.fromJson(json);
      case StarTransactionTypeUserDeposit.constructor:
        return StarTransactionTypeUserDeposit.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
