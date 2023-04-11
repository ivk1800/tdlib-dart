import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with an invoice from a bot. Use getInternalLink with
/// internalLinkTypeBotStart to share the invoice
@immutable
class MessageInvoice extends MessageContent {
  const MessageInvoice({
    required this.title,
    required this.description,
    this.photo,
    required this.currency,
    required this.totalAmount,
    required this.startParameter,
    required this.isTest,
    required this.needShippingAddress,
    required this.receiptMessageId,
    this.extendedMedia,
  });

  /// [title] Product title
  final String title;

  /// param_[description] Product description
  final FormattedText description;

  /// [photo] Product photo; may be null
  final Photo? photo;

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

  /// [extendedMedia] Extended media attached to the invoice; may be null
  final MessageExtendedMedia? extendedMedia;

  static const String constructor = 'messageInvoice';

  static MessageInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageInvoice(
      title: json['title'] as String,
      description:
          FormattedText.fromJson(json['description'] as Map<String, dynamic>?)!,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
      currency: json['currency'] as String,
      totalAmount: json['total_amount'] as int,
      startParameter: json['start_parameter'] as String,
      isTest: json['is_test'] as bool,
      needShippingAddress: json['need_shipping_address'] as bool,
      receiptMessageId: json['receipt_message_id'] as int,
      extendedMedia: MessageExtendedMedia.fromJson(
          json['extended_media'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'description': description.toJson(),
        'photo': photo?.toJson(),
        'currency': currency,
        'total_amount': totalAmount,
        'start_parameter': startParameter,
        'is_test': isTest,
        'need_shipping_address': needShippingAddress,
        'receipt_message_id': receiptMessageId,
        'extended_media': extendedMedia?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
