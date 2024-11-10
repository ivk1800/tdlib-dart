import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A payment has been refunded
@immutable
class MessagePaymentRefunded extends MessageContent {
  const MessagePaymentRefunded({
    required this.ownerId,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });

  /// [ownerId] Identifier of the previous owner of the Telegram Stars that
  /// refunds them
  final MessageSender ownerId;

  /// [currency] Currency for the price of the product
  final String currency;

  /// [totalAmount] Total price for the product, in the smallest units of the
  /// currency
  final int totalAmount;

  /// [invoicePayload] Invoice payload; only for bots
  final String invoicePayload;

  /// [telegramPaymentChargeId] Telegram payment identifier
  final String telegramPaymentChargeId;

  /// [providerPaymentChargeId] Provider payment identifier
  final String providerPaymentChargeId;

  static const String constructor = 'messagePaymentRefunded';

  static MessagePaymentRefunded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaymentRefunded(
      ownerId:
          MessageSender.fromJson(json['owner_id'] as Map<String, dynamic>?)!,
      currency: json['currency'] as String,
      totalAmount: json['total_amount'] as int,
      invoicePayload: json['invoice_payload'] as String,
      telegramPaymentChargeId: json['telegram_payment_charge_id'] as String,
      providerPaymentChargeId: json['provider_payment_charge_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'currency': currency,
        'total_amount': totalAmount,
        'invoice_payload': invoicePayload,
        'telegram_payment_charge_id': telegramPaymentChargeId,
        'provider_payment_charge_id': providerPaymentChargeId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
