import '../tdapi.dart';

/// A new incoming pre-checkout query; for bots only. Contains full
/// information about a checkout
class UpdateNewPreCheckoutQuery extends Update {
  UpdateNewPreCheckoutQuery(
      {required this.id,
      required this.senderUserId,
      required this.currency,
      required this.totalAmount,
      required this.invoicePayload,
      required this.shippingOptionId,
      this.orderInfo});

  /// [id] Unique query identifier
  final int id;

  /// [senderUserId] Identifier of the user who sent the query
  final int senderUserId;

  /// [currency] Currency for the product price
  final String currency;

  /// [totalAmount] Total price for the product, in the minimal quantity of the
  /// currency
  final int totalAmount;

  /// [invoicePayload] Invoice payload
  final String invoicePayload;

  /// [shippingOptionId] Identifier of a shipping option chosen by the user; may
  /// be empty if not applicable
  final String shippingOptionId;

  /// [orderInfo] Information about the order; may be null
  final OrderInfo? orderInfo;

  static const String CONSTRUCTOR = 'updateNewPreCheckoutQuery';

  static UpdateNewPreCheckoutQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewPreCheckoutQuery(
        id: int.tryParse(json['id']) ?? 0,
        senderUserId: json['sender_user_id'],
        currency: json['currency'],
        totalAmount: json['total_amount'],
        invoicePayload: json['invoice_payload'],
        shippingOptionId: json['shipping_option_id'],
        orderInfo: OrderInfo.fromJson(json['order_info']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'sender_user_id': this.senderUserId,
        'currency': this.currency,
        'total_amount': this.totalAmount,
        'invoice_payload': this.invoicePayload,
        'shipping_option_id': this.shippingOptionId,
        'order_info': this.orderInfo?.toJson(),
        '@type': CONSTRUCTOR
      };
}
