import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs server about a purchase through Google Play. For official
/// applications only
/// Returns [Ok]
@immutable
class AssignGooglePlayTransaction extends TdFunction {
  const AssignGooglePlayTransaction({
    required this.packageName,
    required this.storeProductId,
    required this.purchaseToken,
    required this.purpose,
  });

  /// [packageName] Application package name
  final String packageName;

  /// [storeProductId] Identifier of the purchased store product
  final String storeProductId;

  /// [purchaseToken] Google Play purchase token
  final String purchaseToken;

  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;

  static const String constructor = 'assignGooglePlayTransaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'package_name': packageName,
        'store_product_id': storeProductId,
        'purchase_token': purchaseToken,
        'purpose': purpose.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
