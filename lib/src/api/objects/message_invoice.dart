import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message with an invoice from a bot
class MessageInvoice extends MessageContent {
  MessageInvoice(
      {required this.title,
      required this.description,
      this.photo,
      required this.currency,
      required this.totalAmount,
      required this.startParameter,
      required this.isTest,
      required this.needShippingAddress,
      required this.receiptMessageId});

  /// [title] Product title
  final String title;

  /// param_[description] Product description
  final String description;

  /// [photo] Product photo; may be null
  final Photo? photo;

  /// [currency] Currency for the product price
  final String currency;

  /// [totalAmount] Product total price in the smallest units of the currency
  final int totalAmount;

  /// [startParameter] Unique invoice bot start_parameter. To share an invoice
  /// use the URL https://t.me/{bot_username}?start={start_parameter}
  final String startParameter;

  /// [isTest] True, if the invoice is a test invoice
  final bool isTest;

  /// [needShippingAddress] True, if the shipping address must be specified
  final bool needShippingAddress;

  /// [receiptMessageId] The identifier of the message with the receipt, after
  /// the product has been purchased
  final int receiptMessageId;

  static const String CONSTRUCTOR = 'messageInvoice';

  static MessageInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageInvoice(
        title: json['title'],
        description: json['description'],
        photo: Photo.fromJson(json['photo']),
        currency: json['currency'],
        totalAmount: json['total_amount'],
        startParameter: json['start_parameter'],
        isTest: json['is_test'],
        needShippingAddress: json['need_shipping_address'],
        receiptMessageId: json['receipt_message_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'title': this.title,
        'description': this.description,
        'photo': this.photo?.toJson(),
        'currency': this.currency,
        'total_amount': this.totalAmount,
        'start_parameter': this.startParameter,
        'is_test': this.isTest,
        'need_shipping_address': this.needShippingAddress,
        'receipt_message_id': this.receiptMessageId,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
