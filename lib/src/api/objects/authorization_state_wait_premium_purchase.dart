import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user must buy Telegram Premium as an in-store purchase to log in. Call
/// checkAuthenticationPremiumPurchase and then
/// setAuthenticationPremiumPurchaseTransaction
@immutable
class AuthorizationStateWaitPremiumPurchase extends AuthorizationState {
  const AuthorizationStateWaitPremiumPurchase({required this.storeProductId});

  /// [storeProductId] Identifier of the store product that must be bought
  final String storeProductId;

  static const String constructor = 'authorizationStateWaitPremiumPurchase';

  static AuthorizationStateWaitPremiumPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitPremiumPurchase(
      storeProductId: json['store_product_id'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'store_product_id': storeProductId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
