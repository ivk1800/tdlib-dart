import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a temporary identifier of validated order information, which is
/// stored for one hour. Also contains the available shipping options
class ValidatedOrderInfo extends TdObject {
  ValidatedOrderInfo(
      {required this.orderInfoId, required this.shippingOptions});

  /// [orderInfoId] Temporary identifier of the order information
  final String orderInfoId;

  /// [shippingOptions] Available shipping options
  final List<ShippingOption> shippingOptions;

  static const String CONSTRUCTOR = 'validatedOrderInfo';

  static ValidatedOrderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ValidatedOrderInfo(
        orderInfoId: json['order_info_id'],
        shippingOptions: List<ShippingOption>.from(
            (json['shipping_options'] ?? [])
                .map((item) => ShippingOption.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'order_info_id': this.orderInfoId,
        'shipping_options':
            shippingOptions.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
