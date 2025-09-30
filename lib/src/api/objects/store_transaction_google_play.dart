import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A purchase through Google Play
@immutable
class StoreTransactionGooglePlay extends StoreTransaction {
  const StoreTransactionGooglePlay({
    required this.packageName,
    required this.storeProductId,
    required this.purchaseToken,
  });

  /// [packageName] Application package name
  final String packageName;

  /// [storeProductId] Identifier of the purchased store product
  final String storeProductId;

  /// [purchaseToken] Google Play purchase token
  final String purchaseToken;

  static const String constructor = 'storeTransactionGooglePlay';

  static StoreTransactionGooglePlay? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoreTransactionGooglePlay(
      packageName: json['package_name'] as String,
      storeProductId: json['store_product_id'] as String,
      purchaseToken: json['purchase_token'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'package_name': packageName,
    'store_product_id': storeProductId,
    'purchase_token': purchaseToken,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
