import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about a successful payment
class PaymentReceipt extends TdObject {
  PaymentReceipt(
      {required this.title,
      required this.description,
      this.photo,
      required this.date,
      required this.sellerBotUserId,
      required this.paymentsProviderUserId,
      required this.invoice,
      this.orderInfo,
      this.shippingOption,
      required this.credentialsTitle,
      required this.tipAmount});

  /// [title] Product title
  final String title;

  /// param_[description] Product description
  final String description;

  /// [photo] Product photo; may be null
  final Photo? photo;

  /// [date] Point in time (Unix timestamp) when the payment was made
  final int date;

  /// [sellerBotUserId] User identifier of the seller bot
  final int sellerBotUserId;

  /// [paymentsProviderUserId] User identifier of the payment provider bot
  final int paymentsProviderUserId;

  /// [invoice] Information about the invoice
  final Invoice invoice;

  /// [orderInfo] Order information; may be null
  final OrderInfo? orderInfo;

  /// [shippingOption] Chosen shipping option; may be null
  final ShippingOption? shippingOption;

  /// [credentialsTitle] Title of the saved credentials chosen by the buyer
  final String credentialsTitle;

  /// [tipAmount] The amount of tip chosen by the buyer in the smallest units of
  /// the currency
  final int tipAmount;

  static const String CONSTRUCTOR = 'paymentReceipt';

  static PaymentReceipt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentReceipt(
        title: json['title'],
        description: json['description'],
        photo: Photo.fromJson(json['photo']),
        date: json['date'],
        sellerBotUserId: json['seller_bot_user_id'],
        paymentsProviderUserId: json['payments_provider_user_id'],
        invoice: Invoice.fromJson(json['invoice'])!,
        orderInfo: OrderInfo.fromJson(json['order_info']),
        shippingOption: ShippingOption.fromJson(json['shipping_option']),
        credentialsTitle: json['credentials_title'],
        tipAmount: json['tip_amount']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'title': this.title,
        'description': this.description,
        'photo': this.photo?.toJson(),
        'date': this.date,
        'seller_bot_user_id': this.sellerBotUserId,
        'payments_provider_user_id': this.paymentsProviderUserId,
        'invoice': this.invoice.toJson(),
        'order_info': this.orderInfo?.toJson(),
        'shipping_option': this.shippingOption?.toJson(),
        'credentials_title': this.credentialsTitle,
        'tip_amount': this.tipAmount,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
