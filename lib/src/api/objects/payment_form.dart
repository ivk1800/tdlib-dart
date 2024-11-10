import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an invoice payment form
@immutable
class PaymentForm extends TdObject {
  const PaymentForm({
    required this.id,
    required this.type,
    required this.sellerBotUserId,
    required this.productInfo,
  });

  /// [id] The payment form identifier
  final int id;

  /// [type] Type of the payment form
  final PaymentFormType type;

  /// [sellerBotUserId] User identifier of the seller bot
  final int sellerBotUserId;

  /// [productInfo] Information about the product
  final ProductInfo productInfo;

  static const String constructor = 'paymentForm';

  static PaymentForm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentForm(
      id: int.tryParse(json['id']) ?? 0,
      type: PaymentFormType.fromJson(json['type'] as Map<String, dynamic>?)!,
      sellerBotUserId: json['seller_bot_user_id'] as int,
      productInfo:
          ProductInfo.fromJson(json['product_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'type': type.toJson(),
        'seller_bot_user_id': sellerBotUserId,
        'product_info': productInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
