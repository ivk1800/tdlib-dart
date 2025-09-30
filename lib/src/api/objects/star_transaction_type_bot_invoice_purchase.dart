import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a purchase of a product from a bot or a business
/// account by the current user; for regular users only
@immutable
class StarTransactionTypeBotInvoicePurchase extends StarTransactionType {
  const StarTransactionTypeBotInvoicePurchase({
    required this.userId,
    required this.productInfo,
  });

  /// [userId] Identifier of the bot or the business account user that created
  /// the invoice
  final int userId;

  /// [productInfo] Information about the bought product
  final ProductInfo productInfo;

  static const String constructor = 'starTransactionTypeBotInvoicePurchase';

  static StarTransactionTypeBotInvoicePurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeBotInvoicePurchase(
      userId: json['user_id'] as int,
      productInfo: ProductInfo.fromJson(
        json['product_info'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    'product_info': productInfo.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
