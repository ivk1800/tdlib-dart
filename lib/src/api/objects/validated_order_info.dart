import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a temporary identifier of validated order information, which is
/// stored for one hour. Also contains the available shipping options
@immutable
class ValidatedOrderInfo extends TdObject {
  const ValidatedOrderInfo({
    required this.orderInfoId,
    required this.shippingOptions,
  });

  /// [orderInfoId] Temporary identifier of the order information
  final String orderInfoId;

  /// [shippingOptions] Available shipping options
  final List<ShippingOption> shippingOptions;

  static const String constructor = 'validatedOrderInfo';

  static ValidatedOrderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ValidatedOrderInfo(
      orderInfoId: json['order_info_id'],
      shippingOptions: List<ShippingOption>.from(
          (json['shipping_options'] ?? [])
              .map((item) => ShippingOption.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'order_info_id': orderInfoId,
        'shipping_options':
            shippingOptions.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
