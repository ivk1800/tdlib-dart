import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// User bought a product from the bot
@immutable
class BotTransactionPurposeInvoicePayment extends BotTransactionPurpose {
  const BotTransactionPurposeInvoicePayment({
    this.productInfo,
    this.invoicePayload,
  });

  /// [productInfo] Information about the bought product; may be null if not
  /// applicable
  final ProductInfo? productInfo;

  /// [invoicePayload] Invoice payload; for bots only
  final String? invoicePayload;

  static const String constructor = 'botTransactionPurposeInvoicePayment';

  static BotTransactionPurposeInvoicePayment? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotTransactionPurposeInvoicePayment(
      productInfo:
          ProductInfo.fromJson(json['product_info'] as Map<String, dynamic>?),
      invoicePayload: json['invoice_payload'] as String?,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'product_info': productInfo?.toJson(),
        'invoice_payload': invoicePayload,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
