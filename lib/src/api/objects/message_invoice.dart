import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with an invoice from a bot. Use getInternalLink with
/// internalLinkTypeBotStart to share the invoice
@immutable
class MessageInvoice extends MessageContent {
  const MessageInvoice({
    required this.productInfo,
    required this.currency,
    required this.totalAmount,
    required this.startParameter,
    required this.isTest,
    required this.needShippingAddress,
    required this.receiptMessageId,
    this.paidMedia,
    this.paidMediaCaption,
  });

  /// [productInfo] Information about the product
  final ProductInfo productInfo;

  /// [currency] Currency for the product price
  final String currency;

  /// [totalAmount] Product total price in the smallest units of the currency
  final int totalAmount;

  /// [startParameter] Unique invoice bot start_parameter to be passed to
  /// getInternalLink
  final String startParameter;

  /// [isTest] True, if the invoice is a test invoice
  final bool isTest;

  /// [needShippingAddress] True, if the shipping address must be specified
  final bool needShippingAddress;

  /// [receiptMessageId] The identifier of the message with the receipt, after
  /// the product has been purchased
  final int receiptMessageId;

  /// [paidMedia] Extended media attached to the invoice; may be null if none
  final PaidMedia? paidMedia;

  /// [paidMediaCaption] Extended media caption; may be null if none
  final FormattedText? paidMediaCaption;

  static const String constructor = 'messageInvoice';

  static MessageInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageInvoice(
      productInfo:
          ProductInfo.fromJson(json['product_info'] as Map<String, dynamic>?)!,
      currency: json['currency'] as String,
      totalAmount: json['total_amount'] as int,
      startParameter: json['start_parameter'] as String,
      isTest: json['is_test'] as bool,
      needShippingAddress: json['need_shipping_address'] as bool,
      receiptMessageId: json['receipt_message_id'] as int,
      paidMedia:
          PaidMedia.fromJson(json['paid_media'] as Map<String, dynamic>?),
      paidMediaCaption: FormattedText.fromJson(
          json['paid_media_caption'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'product_info': productInfo.toJson(),
        'currency': currency,
        'total_amount': totalAmount,
        'start_parameter': startParameter,
        'is_test': isTest,
        'need_shipping_address': needShippingAddress,
        'receipt_message_id': receiptMessageId,
        'paid_media': paidMedia?.toJson(),
        'paid_media_caption': paidMediaCaption?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
